const express = require('express');
const routerVolantes = express.Router();
const { crearOrden, obtenerOrden, actualizarOrden } = require('../controllers/volantes.controller');

routerVolantes.use(express.json());

// POST
routerVolantes.post('/', crearOrden);

// GET
routerVolantes.get('/:nro', obtenerOrden);

// PATCH
routerVolantes.patch('/', actualizarOrden);

module.exports = routerVolantes;