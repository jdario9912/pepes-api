const express = require('express');
const routerTalonarios = express.Router();
const { crearOrden } = require('../controllers/talonarios.controller');

routerTalonarios.use(express.json());

// POST
routerTalonarios.post('/', crearOrden);

module.exports = routerTalonarios;