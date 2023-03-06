const express = require('express');
const routerOrdenesCliente = express.Router();
const { obtenerOrdenesCliente } = require('../controllers/ordenes.cliente.controller');

// GET
routerOrdenesCliente.get('/:idCliente', obtenerOrdenesCliente);

module.exports = routerOrdenesCliente;