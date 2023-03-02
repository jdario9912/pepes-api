const express = require('express');
const routerDisenos = express.Router();
const { crearOrden, obtenerOrden, actualizarOrden } = require('../controllers/disenos.controller');

routerDisenos.use(express.json());

// POST
routerDisenos.post('/', crearOrden);

// GET
routerDisenos.get('/:nro', obtenerOrden);

// PATCH
routerDisenos.patch('/', actualizarOrden);

module.exports = routerDisenos;