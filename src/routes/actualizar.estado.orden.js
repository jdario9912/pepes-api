const express = require('express');
const { actualizarEstadoOrden } = require('../controllers/actualizar.estado.orden');
const routerActualizarEstadoOrden = express.Router();


routerActualizarEstadoOrden.patch('/', actualizarEstadoOrden);

module.exports = routerActualizarEstadoOrden;