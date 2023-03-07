const pool = require('../db');
const mjsError = require('../models/mjs.error');
const handleError = require('../services/handleError');

const obtenerOrdenesCliente = async (req, res) => {
  const { idCliente } = req.params;

  try {
    const [rows] = await pool.query(
      `CALL ordenes_cliente(?)`,
      [idCliente]
    );

    rows.pop();

    if(rows.length == 0) return res.json({mensaje: 'El cliente no tiene ordenes'});

    res.send(rows.flat());
  } catch (error) {
    handleError(error, res, mjsError);
  }
}

module.exports = {
  obtenerOrdenesCliente
}