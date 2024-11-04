// src/app.js

const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const helmet = require('helmet');
const cvRoutes = require('./routes/cvRoutes');
const authRoutes = require('./routes/authRoutes');

const app = express();

// Middleware
app.use(helmet());           // Security headers
app.use(cors());             // Cross-Origin Resource Sharing
app.use(bodyParser.json());  // Parse JSON requests

// Routes
app.use('/api', cvRoutes);
app.use('/auth', authRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
