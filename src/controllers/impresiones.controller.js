const pool = require('../db');

const crearOrden = (req, res) => {
  res.json(req.body);
};

module.exports = {
  crearOrden
}