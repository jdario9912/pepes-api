const express = require('express');
const routerEmpleados = express.Router();
const { obtenerEmpleados, obtenerEmpleado, crearEmpleadoUser, actualizarEmpleado, eliminarEmpleado } = require('../controllers/empleados.controller');

// GET
routerEmpleados.get('/', obtenerEmpleados);
routerEmpleados.get('/:nickname', obtenerEmpleado);

// POST
routerEmpleados.post('/user', crearEmpleadoUser);

// PUT
routerEmpleados.put('/:id', actualizarEmpleado);

// PATCH
routerEmpleados.patch('/:id', actualizarEmpleado)

// DELETE
routerEmpleados.delete('/:id', eliminarEmpleado);

module.exports = routerEmpleados;