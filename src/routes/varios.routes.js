const express = require('express');
const routerVarios = express.Router();
const { crearOrden, obtenerOrden, actualizarOrden } = require('../controllers/varios.controller');

routerVarios.use(express.json());

// POST
routerVarios.post('/', crearOrden);

// GET
routerVarios.get('/:nro', obtenerOrden);

// PATCH
routerVarios.patch('/', actualizarOrden);

module.exports = routerVarios;