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
app.use(cors());
app.use(bodyParser.json());

// Routes
app.use('/v1/api', cvRoutes);
app.use('/v1/account', authRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
