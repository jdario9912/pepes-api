const express = require('express');
const routerTarjetas = express.Router();
const { crearOrden } = require('../controllers/tarjetas.controller');

routerTarjetas.use(express.json());

// POST
routerTarjetas.post('/', crearOrden);

module.exports = routerTarjetas;