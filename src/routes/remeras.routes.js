const express = require('express');
const routerRemeras = express.Router();
const { crearOrden, obtenerOrden, actualizarOrden } = require('../controllers/remeras.controller');

routerRemeras.use(express.json());

// POST
routerRemeras.post('/', crearOrden);

// GET
routerRemeras.get('/:nro', obtenerOrden);

// PATCH
routerRemeras.patch('/', actualizarOrden);

module.exports = routerRemeras;