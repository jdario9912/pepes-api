const express = require('express');
const { login } = require('../controllers/login.controller');
const routerLogin = express.Router();

routerLogin.use(express.json());

routerLogin.post('/', login);

module.exports = routerLogin;