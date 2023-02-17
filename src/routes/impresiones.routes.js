const express = require('express');
const routerImpresiones = express.Router();
const { crearOrden } = require('../controllers/impresiones.controller');

routerImpresiones.use(express.json());

// POST
routerImpresiones.post('/', crearOrden);

module.exports = routerImpresiones;