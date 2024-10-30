const mysql = require('mysql');

// Database connection configuration
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'cvmaker_db'
});

// Connect to the database
connection.connect(error => {
  if (error) {
    console.error('Error connecting to the database: ' + error.stack);
    return;
  }
  console.log('Successfully connected to the database with ID: ' + connection.threadId);
});

module.exports = connection;
