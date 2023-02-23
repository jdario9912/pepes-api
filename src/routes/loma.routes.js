const express = require('express');
const routerLoma = express.Router();
const { crearOrden } = require('../controllers/loma.controller');

// POST
routerLoma.post('/', crearOrden);

module.exports = routerLoma;