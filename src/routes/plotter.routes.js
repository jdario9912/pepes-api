const express = require('express');
const routerPlotter = express.Router();
const { crearOrden } = require('../controllers/plotter.controller');

routerPlotter.use(express.json());

// POST
routerPlotter.post('/', crearOrden);

module.exports = routerPlotter;