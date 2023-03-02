const express = require('express');
const routerSellos = express.Router();
const { crearOrden, obtenerOrden, actualizarOrden } = require('../controllers/sellos.controller');

routerSellos.use(express.json());

// POST
routerSellos.post('/', crearOrden);

// GET
routerSellos.get('/:nro', obtenerOrden);

// PATCH
routerSellos.patch('/', actualizarOrden);

module.exports = routerSellos;