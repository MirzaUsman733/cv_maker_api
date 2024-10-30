const express = require('express');
const bodyParser = require('body-parser');
const app = express();

// Import routes
const cvRoutes = require('./routes/cvRoutes');

// Middleware to parse JSON bodies
app.use(bodyParser.json());

// Use the routes
app.use('/api', cvRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
