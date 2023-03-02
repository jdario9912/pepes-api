const express = require('express');
const routerLoma = express.Router();
const { crearOrden, obtenerOrden, actualizarOrden } = require('../controllers/loma.controller');

// POST
routerLoma.post('/', crearOrden);

// GET
routerLoma.get('/:nro', obtenerOrden);

// PATCH
routerLoma.patch('/', actualizarOrden);

module.exports = routerLoma;