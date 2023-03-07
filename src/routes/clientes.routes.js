const express = require('express');
const routerClientes = express.Router();
const { obtenerClientes, obtenerCliente, crearCliente, editarCliente } = require('../controllers/clientes.controller');

routerClientes.use(express.json());

// GET
routerClientes.get('/', obtenerClientes);
routerClientes.get('/:id', obtenerCliente);

// POST
routerClientes.post('/', crearCliente);

// PATCH
routerClientes.patch('/', editarCliente);

module.exports = routerClientes;