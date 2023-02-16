const express = require('express');
const { obtenerBusqueda } = require('../controllers/busqueda.controller');
const routerBusqueda = express.Router();

routerBusqueda.use(express.json());

// GET
routerBusqueda.get('/:busqueda', obtenerBusqueda);

module.exports = routerBusqueda;