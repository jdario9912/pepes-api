const express = require('express');
const routerPedido = express.Router();
const { buscarPedido } = require('../controllers/pedido.controller');

routerPedido.use(express.json());

// GET
routerPedido.get('/:numero', buscarPedido);

module.exports = routerPedido;