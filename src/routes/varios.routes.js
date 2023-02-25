const express = require('express');
const routerVarios = express.Router();
const { crearOrden } = require('../controllers/varios.controller');

routerVarios.use(express.json());

// POST
routerVarios.post('/', crearOrden);

module.exports = routerVarios;