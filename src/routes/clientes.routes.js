const express = require('express');
const routerClientes = express.Router();
const { obtenerClientes, crearCliente } = require('../controllers/clientes.controller');

// GET
routerClientes.get('/', obtenerClientes);

// POST
routerClientes.post('/', crearCliente);




module.exports = routerClientes;