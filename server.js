const express = require('express');
const app = express();
const http = require("http");
const dotenv = require('dotenv');
const cookieParser = require('cookie-parser');
const cors = require('cors');
const morgan = require('morgan');
const { readdirSync } = require('fs');
const helmet = require('helmet');
const swaggerUi = require('swagger-ui-express');

dotenv.config();



// 1. Security Middlewares (Top Priority)
app.use(helmet()); // General security
//app.use(helmet.frameguard({ action: 'deny' })); // Specific Clickjacking protection

// 2. Logging & Parsing
app.use(morgan('dev'));
app.use(express.json()); // Built-in alternative to body-parser
app.use(cookieParser());


const swaggerDocument = require('./docs/openapi.json');
//app.use('/docs', swaggerUi.serve, swaggerUi.setup(swaggerDocument));



// 3. CORS Configuration
const allowedOrigins = process.env.ALLOWED_ORIGINS ? process.env.ALLOWED_ORIGINS.split(',') : [];
app.use(cors({
    origin: (origin, callback) => {
        if (!origin || allowedOrigins.includes(origin)) {
            callback(null, true);
        } else {
            callback(new Error('Not allowed by CORS'));
        }
    },
    methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
    credentials: true,
}));

// 4. Routes
readdirSync('./routes').map((r) => {
    app.use('/api', require('./routes/' + r));
});

// Root check
app.get("/", (req, res) => {
    res.json({ message: "Api is working..." });
});

// 5. Error Handling (Must be after routes)
app.use(function (err, req, res, next) {
    if (err.name === 'UnauthorizedError') {
        return res.status(401).send({ title: 'Unauthorized', details: 'Unauthorized access!' });
    }
    // Generic error fallback
    res.status(500).send({ error: err.message });
});


const port = process.env.PORT || 8000;

const server = http.createServer(app);



const WebSocket = require("ws");
const { WebSocketServer } = require("ws");

const wss = new WebSocketServer({ server });


wss.on("connection", (clientSocket) => {
  console.log("✅ Client connected");

  if (!process.env.DEEPGRAM_API_KEY) {
    console.error("❌ DEEPGRAM_API_KEY missing");
    clientSocket.send(JSON.stringify({ error: "Server missing Deepgram key" }));
    clientSocket.close();
    return;
  }

  const deepgramUrl = "wss://api.deepgram.com/v1/listen";

  const dgSocket = new WebSocket(deepgramUrl, {
    headers: { Authorization: `Token ${process.env.DEEPGRAM_API_KEY}` },
  });

  let isDgReady = false;
  let pendingChunks = [];        // ← Buffer audio until Deepgram is ready
  let keepAliveInterval = null;

  // When Deepgram is ready
  dgSocket.on("open", () => {
    console.log("✅ Connected to Deepgram");
    isDgReady = true;
    clientSocket.send(JSON.stringify({ type: "ready" }));

    // Send any audio that arrived too early
    if (pendingChunks.length > 0) {
      console.log(`🔄 Sending ${pendingChunks.length} buffered audio chunks to Deepgram`);
      pendingChunks.forEach(chunk => dgSocket.send(chunk));
      pendingChunks = [];
    }

    // Keep-alive every 5 seconds (helps during silence)
    keepAliveInterval = setInterval(() => {
      if (dgSocket.readyState === WebSocket.OPEN) {
        dgSocket.send(JSON.stringify({ type: "KeepAlive" }));
      }
    }, 5000);
  });

  // Forward transcripts back to browser
  dgSocket.on("message", (data) => {
    try {
      const parsed = JSON.parse(data.toString());
      if (parsed.type === "Results") {
        console.log(`📤 Deepgram Results | is_final: ${parsed.is_final}`);
      }
      clientSocket.send(JSON.stringify(parsed));
    } catch (err) {
      console.error("Parse error from Deepgram:", err);
    }
  });

dgSocket.on("error", (err) => {
  console.error("❌ Deepgram error:", err.message);
  clientSocket.send(JSON.stringify({
    type: "status",
    status: "error",
    message: "❌ Deepgram connection error. Please try again."
  }));
});

  dgSocket.on("close", (code, reason) => {
    console.log(`Deepgram closed | code: ${code}, reason: ${reason}`);
    clearInterval(keepAliveInterval);
  });

  // Receive audio from browser
  // clientSocket.on("message", (msg) => {
  //   console.log(`📥 Audio chunk from browser: ${msg.length} bytes`);

  //   if (dgSocket.readyState === WebSocket.OPEN && isDgReady) {
  //     dgSocket.send(msg);
  //   } else {
  //     // Buffer the chunk until Deepgram opens
  //     pendingChunks.push(msg);
  //     console.log(`⏳ Buffering chunk (Deepgram not ready yet). Total buffered: ${pendingChunks.length}`);
      
  //     // Safety: don't buffer forever
  //     if (pendingChunks.length > 50) {
  //       console.warn("Too many buffered chunks, dropping oldest");
  //       pendingChunks.shift();
  //     }
  //   }
  // });

  // Receive audio from browser
clientSocket.on("message", (msg) => {
  console.log(`📥 Audio chunk from browser: ${msg.length} bytes`);

  if (dgSocket.readyState === WebSocket.OPEN && isDgReady) {
    dgSocket.send(msg);
  } else {
    pendingChunks.push(msg);
    console.log(`⏳ Buffering chunk (Deepgram not ready yet). Total buffered: ${pendingChunks.length}`);

    // Send status to frontend so user can see it
    clientSocket.send(JSON.stringify({
      type: "status",
      status: "buffering",
      message: "⏳ Connecting to Voice to Text AI... (Buffering audio)"
    }));

    // Safety limit
    if (pendingChunks.length > 50) {
      console.warn("Too many buffered chunks, dropping oldest");
      pendingChunks.shift();
    }
  }
});

// When Deepgram is ready
dgSocket.on("open", () => {
  console.log("✅ Connected to Deepgram");
  isDgReady = true;

  clientSocket.send(JSON.stringify({
    type: "status",
    status: "ready",
    message: "✅ Voice to Text is connected. You can speak now."
  }));

  // Flush buffered chunks
  if (pendingChunks.length > 0) {
    console.log(`🔄 Sending ${pendingChunks.length} buffered audio chunks to Deepgram`);
    pendingChunks.forEach(chunk => dgSocket.send(chunk));
    pendingChunks = [];
  }

  // Keep-alive
  keepAliveInterval = setInterval(() => {
    if (dgSocket.readyState === WebSocket.OPEN) {
      dgSocket.send(JSON.stringify({ type: "KeepAlive" }));
    }
  }, 5000);
});

  clientSocket.on("close", () => {
    console.log("Client disconnected");
    clearInterval(keepAliveInterval);
    if (dgSocket.readyState === WebSocket.OPEN) dgSocket.close();
  });
});

server.listen(port, () => {
    console.log(`🚀 Server running on port ${port}`);
});


module.exports = app;


// const express = require('express');
// const app = express();
// require('dotenv').config();
// const bodyParser = require('body-parser');
// const cookieParser = require('cookie-parser');

// const cors = require('cors');

// const morgan = require('morgan');
// const { readdirSync } = require('fs');

// const helmet = require('helmet');

// //test();
// app.use(helmet.frameguard({ action: 'deny' }));

// module.exports=app;
// // //connection string
// // var connectionString = process.env.DATABASE_MSSQL;

// // sql
// //   .connect(connectionString)
// //   .then(() => {
// //     console.log('MsSql Connected.');
// //   })
// //   .catch((err) => {
// //     console.log(err);
// //   });


// //middlewares
// app.use(morgan('dev'));
// app.use(bodyParser.json());
// app.use(cookieParser());

// //cors
// //if (process.env.NODE_ENV === "development") {
// //app.use(cors({ origin: `${process.env.CLIENT_URL}` }));
// //}

// const allowedOrigins = process.env.ALLOWED_ORIGINS.split(',');

// const corsOptions = {
//   origin: function (origin, callback) {
//     // Allow requests with no origin, like mobile apps or curl requests
//     if (!origin) return callback(null, true);

//     if (allowedOrigins.indexOf(origin) !== -1) {
//       callback(null, true);
//     } else {
//       callback(new Error('Not allowed by CORS'));
//     }
//   },
//   methods: 'GET,HEAD,PUT,PATCH,POST,DELETE',
//   credentials: true, // Enable cookies and other credentials
// };

// // Use CORS middleware
// //app.use(cors(corsOptions));

// app.use(cors());

// //reoutes middlewares

// const routeArr = readdirSync('./routes');
// routeArr.map((r) => {
//   //import routes
//    const route = require('./routes/' + r);
//   //routes middlewares
//    app.use('/api', route);
// });


// app.use(function (err, req, res, next) {
//   if (err.name === 'UnauthorizedError') {
//     res
//       .status(401)
//       .send({ title: 'Unauthorized', details: 'Unauthorized access!' });
//   }
// });

// app.use("/", (req, res) => {
//   res.json({ message: "Api is working..." });
// });


// // const getproductid=async ()=>{
// //   const dc_ProductId=await get_DC_ProductIdByProductId(10);

// //   console.log('getDC_ProductIdByProductId',dc_ProductId);
  
// // }

// // getproductid();

// //port
// const port = process.env.PORT || 8000;
// app.listen(port, () => {
//   console.log(`Server is running on port ${port}`);
// });

