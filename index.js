// server.js
const express = require('express');
const cors = require('cors');

const app = express();
const PORT = 5350;

// Middleware
app.use(cors()); // Allow all origins
app.use(express.json()); // JSON body parser

// Simple GET
app.get('/test', (req, res) => {
  res.json({ message: 'GET request successful!', query: req.query });
});

// Simple POST
app.post('/test', (req, res) => {
  res.json({ message: 'POST request successful!', body: req.body });
});

// Simple PUT
app.put('/test', (req, res) => {
  res.json({ message: 'PUT request successful!', body: req.body });
});

// Simple DELETE
app.delete('/test', (req, res) => {
  res.json({ message: 'DELETE request successful!' });
});

// Simple PATCH
app.patch('/test', (req, res) => {
  res.json({ message: 'PATCH request successful!', body: req.body });
});

// Echo everything (for testing)
app.all('/echo', (req, res) => {
  res.json({
    method: req.method,
    headers: req.headers,
    query: req.query,
    body: req.body
  });
});

// Root route
app.get('/', (req, res) => {
  res.send('Express server running. Try /test or /echo routes!');
});

app.listen(PORT, () => {
  console.log(`Server listening at http://localhost:${PORT}`);
});
