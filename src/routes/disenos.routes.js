const express = require('express');
const routerDisenos = express.Router();
const { crearOrden } = require('../controllers/disenos.controller');

routerDisenos.use(express.json());

// POST
routerDisenos.post('/', crearOrden);

module.exports = routerDisenos;