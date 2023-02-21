const pool = require('../db');
const { msjError } = require('../models/mjs.error');
const invertirFecha = require('../services/ordenes.pendientes.service');

const obtenerOrdenesPendientes = async (req, res) => {
  const { idCliente, nombre } = req.params;

  try {
    const [rows] = await pool.query(
      `CALL ordenes_pendientes(${idCliente})`
    );
    
    const ordenesPendientes = rows.filter(row => row.length > 0);

    if(ordenesPendientes.length == 0)
      return res.status(404).json({ mensaje: `${nombre} no tiene ordenes pendientes.`})
    ;

    res.send(ordenesPendientes[0]);
  } catch (error) {
    console.log(error);
    return msjError;
  }
}

const buscarOrdenesPendientes = async (req, res) => {
  try {
    const [rows] = await pool.query(
      `CALL buscar_ordenes_pendientes()`
    )
    
    rows.pop();
    
    res.send(rows.flat().sort((a, b) => invertirFecha(a.fecha_entrega) - invertirFecha(b.fecha_entrega)));
  } catch (error) {
    console.log(error);
    res.status(500).json({ mensaje: 'algo salio mal'})
  }
}

module.exports = {
  obtenerOrdenesPendientes,
  buscarOrdenesPendientes
}