const express = require('express');
const routerImpresiones = express.Router();
const { crearOrden, obtenerOrden, actualizarOrden } = require('../controllers/impresiones.controller');

routerImpresiones.use(express.json());

// POST
routerImpresiones.post('/', crearOrden);

// GET
routerImpresiones.get('/:nro', obtenerOrden);

// PATCH
routerImpresiones.patch('/', actualizarOrden);

module.exports = routerImpresiones;