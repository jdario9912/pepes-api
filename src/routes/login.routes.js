const express = require('express');
const routerLogin = express.Router();

routerLogin.use(express.json());

routerLogin.get('/', (req, res) => {
  const infoLogin = req.body;
  console.log(infoLogin);
});


// TENGO QUE TERMINAR ESTAS RUTAS