const express = require('express');
const routerTalonarios = express.Router();
const { crearOrden, obtenerOrden, actualizarOrden } = require('../controllers/talonarios.controller');

routerTalonarios.use(express.json());

// POST
routerTalonarios.post('/', crearOrden);

// GET
routerTalonarios.get('/:nro', obtenerOrden);

// PATCH
routerTalonarios.patch('/', actualizarOrden);

module.exports = routerTalonarios;