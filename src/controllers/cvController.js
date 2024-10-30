// src/controllers/cvController.js

const connection = require('../config/dbconfig');

// Get all CVs
exports.getAllCVs = (req, res) => {
  const sql = 'SELECT * FROM cvs';
  connection.query(sql, (error, results) => {
    if (error) {
      console.error(error);
      res.status(500).send('Error retrieving CVs');
    } else {
      res.status(200).json(results);
    }
  });
};

// Get a single CV by ID
exports.getCVById = (req, res) => {
  const { id } = req.params;
  const sql = 'SELECT * FROM cvs WHERE id = ?';
  connection.query(sql, [id], (error, results) => {
    if (error) {
      console.error(error);
      res.status(500).send('Error retrieving the CV');
    } else if (results.length === 0) {
      res.status(404).send('CV not found');
    } else {
      res.status(200).json(results[0]);
    }
  });
};

// Create a new CV
exports.createCV = (req, res) => {
  const { name, email, education, skills } = req.body;
  const sql = 'INSERT INTO cvs (name, email, education, skills) VALUES (?, ?, ?, ?)';
  connection.query(sql, [name, email, education, skills], (error, results) => {
    if (error) {
      console.error(error);
      res.status(500).send('Error creating CV');
    } else {
      res.status(201).send(`CV created with ID: ${results.insertId}`);
    }
  });
};

// Update an existing CV
exports.updateCV = (req, res) => {
  const { id } = req.params;
  const { name, email, education, skills } = req.body;
  const sql = 'UPDATE cvs SET name = ?, email = ?, education = ?, skills = ? WHERE id = ?';
  connection.query(sql, [name, email, education, skills, id], (error, results) => {
    if (error) {
      console.error(error);
      res.status(500).send('Error updating CV');
    } else if (results.affectedRows === 0) {
      res.status(404).send('CV not found');
    } else {
      res.status(200).send('CV updated successfully');
    }
  });
};

// Delete a CV
exports.deleteCV = (req, res) => {
  const { id } = req.params;
  const sql = 'DELETE FROM cvs WHERE id = ?';
  connection.query(sql, [id], (error, results) => {
    if (error) {
      console.error(error);
      res.status(500).send('Error deleting CV');
    } else if (results.affectedRows === 0) {
      res.status(404).send('CV not found');
    } else {
      res.status(200).send('CV deleted successfully');
    }
  });
};
