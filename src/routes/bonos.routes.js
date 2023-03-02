const express = require('express');
const { crearOrden, obtenerOrden, actualizarOrden } = require('../controllers/bonos.controller');
const routerBonos = express.Router();

routerBonos.use(express.json());

// POST
routerBonos.post('/', crearOrden);

// GET
routerBonos.get('/:nro', obtenerOrden);

// PATCH
routerBonos.patch('/', actualizarOrden);

module.exports = routerBonos;