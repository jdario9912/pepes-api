const express = require('express');
const routerPlotter = express.Router();
const { crearOrden, obtenerOrden, actualizarOrden } = require('../controllers/plotter.controller');

routerPlotter.use(express.json());

// POST
routerPlotter.post('/', crearOrden);

// GET
routerPlotter.get('/:nro', obtenerOrden);

// PATCH
routerPlotter.patch('/', actualizarOrden);

module.exports = routerPlotter;