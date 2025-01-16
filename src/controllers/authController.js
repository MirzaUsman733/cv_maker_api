const connection = require("../config/dbconfig");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
require("dotenv").config();

// Register a new user
exports.registerUser = async (req, res) => {
  const { username, email, password } = req.body;

  try {
    const [existingUser] = await connection.query(
      "SELECT * FROM auth_user WHERE email = ?",
      [email]
    );
    if (existingUser.length > 0) {
      return res.status(400).json({ message: "User already exists" });
    }

    const salt = await bcrypt.genSalt(10);
    const password_hash = await bcrypt.hash(password, salt);

    const result = await connection.query(
      "INSERT INTO auth_user (username, email, password) VALUES (?, ?, ?)",
      [username, email, password_hash]
    );

    const userId = result[0].insertId;

    const token = jwt.sign({ id: userId, email }, process.env.JWT_SECRET, {
      expiresIn: "1h",
    });

    res.status(201).json({
      message: "User registered successfully and logged in",
      token,
      name: username,
      email,
      isActive: true,
      isTrue: true,
    });
  } catch (error) {
    res.status(500).json({
      error: "Error registering user",
      isActive: false,
      isTrue: false,
    });
  }
};

exports.loginUser = async (req, res) => {
  const { email, password } = req.body;

  try {
    const [results] = await connection.query(
      "SELECT * FROM auth_user WHERE email = ?",
      [email]
    );
    const user = results[0];

    if (!user) {
      return res.status(400).json({ message: "Email or Password is Invalid" });
    }

    const validPassword = await bcrypt.compare(password, user.password);
    if (!validPassword) {
      return res.status(400).json({ message: "Email or Password is Invalid" });
    }

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
    res.status(500).json({
      error: "Error logging in user",
      isActive: false,
      isTrue: false,
    });
  }
};

exports.updateUser = async (req, res) => {
  const { id } = req.user;
  const { username, password } = req.body;
  const updates = {};
  try {
    if (username) {
      updates.username = username;
    }

    if (password) {
      const salt = await bcrypt.genSalt(10);
      updates.password = await bcrypt.hash(password, salt);
    }

    const query = [];
    const values = [];

    Object.keys(updates).forEach((key) => {
      query.push(`${key} = ?`);
      values.push(updates[key]);
    });

    if (query.length === 0) {
      return res
        .status(400)
        .json({ message: "No valid fields provided for update" });
    }

    values.push(id);

    await connection.query(
      `UPDATE auth_user SET ${query.join(", ")} WHERE auth_user_id = ?`,
      values
    );

    res.status(200).json({
      message: "User updated successfully",
      updates: updates,
    });
  } catch (error) {
    res.status(500).json({
      error: "Error updating user",
    });
  }
};
