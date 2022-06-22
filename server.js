//DEPENDENCIES
const mysql = require("mysql2");
const inquirer = require("inquirer");
const consoleTable = require("console.table");

const PORT = process.env.PORT || 3001;



// Connect to database
const db = mysql.createConnection(
    {
      host: 'localhost',
      user: 'root',
      password: 'Carmel360',
      database: 'employee_db'
    },
    console.log(`Connected to the employee_db database.`)
  );
  