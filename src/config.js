const dotenv = require('dotenv');
const port = process.env.PORT || 3001;
const dbHost =process.env.DB_HOST || 'localhost'
const dbPort = process.env.DB_PORT || 3306
const dbUser = process.env.DB_USER || 'root'
const dbPassword = process.env.DB_PASSWORD || 'riverplate9912'
const dbDataBase = process.env.DB_DATABASE || 'pepesdb'

module.exports = {
  dotenv,
  port,
  dbHost,
  dbPort,
  dbUser,
  dbPassword,
  dbDataBase,
}