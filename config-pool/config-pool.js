const { dbHost, dbUser, dbPassword, dbPort, dbDataBase } = require('../src/config');

module.exports =
  {
    host : dbHost,
    user : dbUser,
    password : dbPassword,
    port : dbPort,
    database : dbDataBase,
    waitForConnections: true,
    connectionLimit: 10,
    queueLimit: 0,
  }
;