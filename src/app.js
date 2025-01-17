// src/app.js
const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");
const helmet = require("helmet");
const cvRoutes = require("./routes/cvRoutes");
const authRoutes = require("./routes/authRoutes");

const app = express();

app.use(bodyParser.json({ limit: "50mb" })); // Adjust if needed
app.use(bodyParser.urlencoded({ limit: "50mb", extended: true }));

// Middleware
app.use(helmet());
app.use(cors());
app.use(bodyParser.json());

// Routes
app.use("/v1", cvRoutes);
app.use("/v1/account", authRoutes);

const PORT = process.env.PORT || 3008;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
