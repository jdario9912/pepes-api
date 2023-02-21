const express = require('express');
const routerOrdenesPendientes = express.Router();
const { obtenerOrdenesPendientes, buscarOrdenesPendientes } = require('../controllers/ordenes.pendientes.controller');

routerOrdenesPendientes.get('/', buscarOrdenesPendientes);
routerOrdenesPendientes.get('/:idCliente/:nombre', obtenerOrdenesPendientes);

module.exports = routerOrdenesPendientes;