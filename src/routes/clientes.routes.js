const express = require('express');
const routerClientes = express.Router();
const { obtenerClientes, obtenerCliente, crearCliente } = require('../controllers/clientes.controller');

// GET
routerClientes.get('/', obtenerClientes);
routerClientes.get('/:id', obtenerCliente);

// POST
routerClientes.post('/', crearCliente);




module.exports = routerClientes;