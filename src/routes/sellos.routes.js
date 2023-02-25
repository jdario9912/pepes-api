const express = require('express');
const routerSellos = express.Router();
const { crearOrden } = require('../controllers/sellos.controller');

routerSellos.use(express.json());

// POST
routerSellos.post('/', crearOrden);

module.exports = routerSellos;