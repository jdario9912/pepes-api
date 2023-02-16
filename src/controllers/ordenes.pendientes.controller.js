const pool = require('../db');
const { msjError } = require('../models/mjs.error');

const obtenerOrdenesPendientes = async (req, res) => {
  const { idCliente, nombre } = req.params;

  try {
    const [rows] = await pool.query(
      `CALL ordenes_pendientes(${idCliente})`
    );
    
    const ordenesPendientes = rows.filter(row => row.length > 0);

    if(ordenesPendientes.length == 0)
      return res.status(404).json({ mensaje: `${nombre} no tiene ordenes pendientes.`});

    res.send(ordenesPendientes[0]);
  } catch (error) {
    return msjError;
  }
}

module.exports = obtenerOrdenesPendientes;