const express = require('express');
const { crearOrden } = require('../controllers/bonos.controller');
const bonosRouter = express.Router();

bonosRouter.use(express.json());

// POST
bonosRouter.post('/', crearOrden);

module.exports = bonosRouter;