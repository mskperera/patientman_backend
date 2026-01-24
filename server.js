
const express = require('express');
const app = express();
require('dotenv').config();
const cookieParser = require('cookie-parser');
const cors = require('cors');
const morgan = require('morgan');
const { readdirSync } = require('fs');
const helmet = require('helmet');

// 1. Security Middlewares (Top Priority)
app.use(helmet()); // General security
//app.use(helmet.frameguard({ action: 'deny' })); // Specific Clickjacking protection

// 2. Logging & Parsing
app.use(morgan('dev'));
app.use(express.json()); // Built-in alternative to body-parser
app.use(cookieParser());

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
app.listen(port, () => {
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

