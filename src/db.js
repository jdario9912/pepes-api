const { createPool } = require("mysql2/promise");
const configPool = require('../config-pool/config-pool');
const pool = createPool(configPool);

module.exports = pool;