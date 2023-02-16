const express = require('express');
const routerOrdenesPendientes = express.Router();
const obtenerOrdenesPendientes = require('../controllers/ordenes.pendientes.controller');

routerOrdenesPendientes.get('/:idCliente/:nombre', obtenerOrdenesPendientes);

module.exports = routerOrdenesPendientes;