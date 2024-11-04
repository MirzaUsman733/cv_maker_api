// src/controllers/authController.js

// const connection = require("../config/dbconfig");
// const bcrypt = require("bcrypt");
// const jwt = require("jsonwebtoken");
// require("dotenv").config();

// // Register a new user
// exports.registerUser = async (req, res) => {
//   const { username, email, password } = req.body;

//   try {
//     // Check if the user already exists
//     const [existingUser] = await connection.query(
//       "SELECT * FROM auth_user WHERE email = ?",
//       [email]
//     );
//     if (existingUser.length > 0) {
//       return res.status(400).json({ message: "User already exists" });
//     }

//     // Hash the password
//     const salt = await bcrypt.genSalt(10);
//     const password_hash = await bcrypt.hash(password, salt);

//     // Insert the new user into the database
//     await connection.query(
//       "INSERT INTO auth_user (username, email, password) VALUES (?, ?, ?)",
//       [username, email, password_hash]
//     );

//     res.status(201).json({ message: "User registered successfully" });
//   } catch (error) {
//     console.error(error);
//     res.status(500).json({ error: "Error registering user" });
//   }
// };

// Login user
// exports.loginUser = async (req, res) => {
//   const { email, password } = req.body;

//   try {
//     // Find the user by email
//     const [user] = await connection.query(
//       "SELECT * FROM auth_user WHERE email = ?",
//       [email]
//     );
//     if (user.length === 0) {
//       return res.status(400).json({
//         message: "Invalid credentials",
//         isActive: false,
//         isTrue: false,
//       });
//     }

//     // Compare the provided password with the stored hash
//     const validPassword = await bcrypt.compare(password, user[0].password);
//     if (!validPassword) {
//       return res.status(400).json({
//         message: "Invalid credentials",
//         isActive: false,
//         isTrue: false,
//       });
//     }

//     // Generate a JWT token
//     const token = jwt.sign(
//       { id: user[0].auth_user_id, email: user[0].email },
//       process.env.JWT_SECRET,
//       { expiresIn: "1h" }
//     );

//     // Set isActive and isTrue to true upon successful login
//     res.status(200).json({
//       message: "Login successful",
//       token,
//       name: user[0].username, // Assuming 'username' is the name field in your db
//       email: user[0].email,
//       isActive: true, // Indicate that user is active after login
//       isTrue: true, // Custom logic that marks true on successful login
//     });
//   } catch (error) {
//     console.error(error);
//     res.status(500).json({
//       error: "Error logging in user",
//       isActive: false,
//       isTrue: false,
//     });
//   }
// };









const connection = require("../config/dbconfig");
const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");
require("dotenv").config();

// Register a new user
exports.registerUser = async (req, res) => {
  const { username, email, password } = req.body;

  try {
    // Check if the user already exists
    const [existingUser] = await connection.query(
      "SELECT * FROM auth_user WHERE email = ?",
      [email]
    );
    if (existingUser.length > 0) {
      return res.status(400).json({ message: "User already exists" });
    }

    // Hash the password
    const salt = await bcrypt.genSalt(10);
    const password_hash = await bcrypt.hash(password, salt);

    // Insert the new user into the database
    const result = await connection.query(
      "INSERT INTO auth_user (username, email, password) VALUES (?, ?, ?)",
      [username, email, password_hash]
    );

    // Retrieve the new user's ID from the result of the INSERT operation
    const userId = result[0].insertId;

    // Generate a JWT token for the new user
    const token = jwt.sign(
      { id: userId, email },
      process.env.JWT_SECRET,
      { expiresIn: "1h" }
    );

    res.status(201).json({
      message: "User registered successfully and logged in",
      token,
      name: username,
      email,
      isActive: true,
      isTrue: true
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({
      error: "Error registering user",
      isActive: false,
      isTrue: false
    });
  }
};


exports.loginUser = async (req, res) => {
  const { email, password } = req.body;

  try {
    // Execute the query
    const [results] = await connection.query(
      "SELECT * FROM auth_user WHERE email = ?",
      [email]
    );
    const user = results[0]; // Directly accessing the first object

    if (!user) {
      return res.status(400).json({ message: "Email or Password is Invalid" });
    }

    // Check if the provided password matches the stored hash
    const validPassword = await bcrypt.compare(password, user.password);
    if (!validPassword) {
      return res.status(400).json({ message: "Email or Password is Invalid" });
    }

    // Generate a JWT token
    const token = jwt.sign(
      { id: user.auth_user_id, email: user.email },
      process.env.JWT_SECRET,
      { expiresIn: "1h" }
    );

    res.status(200).json({
      message: "Login successful",
      token,
      name: user.username,
      email: user.email,
      isActive: true,
      isTrue: true,
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({
      error: "Error logging in user",
      isActive: false,
      isTrue: false,
    });
  }
};



// Update user credentials
exports.updateUser = async (req, res) => {
  const { id } = req.user; // Assuming userID is available from a middleware that decodes the JWT
  const { username, password } = req.body;
  console.log(id)
  const updates = {};
  console.log(req.user)
  try {
    if (username) {
      updates.username = username;
    }

    if (password) {
      const salt = await bcrypt.genSalt(10);
      updates.password = await bcrypt.hash(password, salt);
    }

    // Build the update query dynamically based on what's provided
    const query = [];
    const values = [];

    Object.keys(updates).forEach(key => {
      query.push(`${key} = ?`);
      values.push(updates[key]);
    });

    if (query.length === 0) {
      return res.status(400).json({ message: "No valid fields provided for update" });
    }

    values.push(id); // Add userId to the values for the WHERE clause

    await connection.query(
      `UPDATE auth_user SET ${query.join(", ")} WHERE auth_user_id = ?`,
      values
    );

    res.status(200).json({
      message: "User updated successfully",
      updates: updates
    });
  } catch (error) {
    console.error(error);
    res.status(500).json({
      error: "Error updating user",
    });
  }
};
