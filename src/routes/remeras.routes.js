const express = require('express');
const routerRemeras = express.Router();
const { crearOrden } = require('../controllers/remeras.controller');

routerRemeras.use(express.json());

// POST
routerRemeras.post('/', crearOrden);

module.exports = routerRemeras;