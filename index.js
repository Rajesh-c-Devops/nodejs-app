// Load the HTTP module
const http = require('http');

// Define the hostname and port
const hostname = 'localhost';
const port = 3000;

// Create the server
const server = http.createServer((req, res) => {
  res.statusCode = 200; // HTTP status code for OK
  res.setHeader('Content-Type', 'text/plain'); // Set the response content type
  res.end('This is node js app\n'); // Send the response
});

// Start the server
server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`); // Log when server starts
});
