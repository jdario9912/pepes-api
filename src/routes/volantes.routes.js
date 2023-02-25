const express = require('express');
const routerVolantes = express.Router();
const { crearOrden } = require('../controllers/volantes.controller');

routerVolantes.use(express.json());

// POST
routerVolantes.post('/', crearOrden);

module.exports = routerVolantes;