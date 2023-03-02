const express = require('express');
const routerTarjetas = express.Router();
const { crearOrden, obtenerOrden, actualizarOrden } = require('../controllers/tarjetas.controller');

routerTarjetas.use(express.json());

// POST
routerTarjetas.post('/', crearOrden);

// GET
routerTarjetas.get('/:nro', obtenerOrden);

// PATCH
routerTarjetas.patch('/', actualizarOrden);

module.exports = routerTarjetas;