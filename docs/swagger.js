const swaggerAutogen = require('swagger-autogen')();

const doc = {
  info: {
    title: 'My Node.js API',
    version: '1.0.0',
    description: 'API with auto-generated Swagger documentation',
  },
  host: 'localhost:3000', // Adjust to your app's host/port
  schemes: ['http'], // Or ['https'] for production
  basePath: '/', // If your routes have a prefix like '/api', set it here
};

const outputFile = './openapi.json'; // Where the generated spec will be saved
const endpointsFiles = ['../server.js', '../routes/*.js']; // Paths to your route files (supports glob patterns)

swaggerAutogen(outputFile, endpointsFiles, doc);

// swaggerAutogen(outputFile, endpointsFiles, doc).then(() => {
//   require('../server.js'); // Optionally start your app after generation
// });