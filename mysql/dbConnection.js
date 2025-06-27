// dbConnection.js
const mysql = require("mysql2/promise"); // Use promise-based mysql2 for cleaner async/await

// Create a single pool instance
const pool = mysql.createPool({
  connectionLimit: 10, // Increase this based on your needs and server capacity
  host: process.env.DB_HOST,
  user: process.env.DB_USERNAME,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  port: process.env.DB_SERVER_PORT,
  waitForConnections: true,
  queueLimit: 0,
});

module.exports = pool;
// const mysql = require("mysql2");

// const getConnectionPool=async()=>{

//     // Create a connection pool
//     const pool = mysql.createPool({
//       connectionLimit: 1, // Number of connections to create
//       host: process.env.DB_HOST,
//       user: process.env.DB_USERNAME,
//       password: process.env.DB_PASSWORD,
//       database: process.env.DB_NAME,
//       port:process.env.DB_SERVER_PORT,
//       waitForConnections: true,
//       queueLimit: 0,
//     });
    
//   return pool;
// }

// module.exports = {
//   getConnectionPool
// };
