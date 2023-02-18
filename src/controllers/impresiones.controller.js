const pool = require('../db');
const mjsError = require('../models/mjs.error');

const crearOrden = async (req, res) => {
  const { id_cliente, nro_orden, fecha_creacion, atendido_por, fecha_entrega, hora_entrega, muestra, ubicacion_archivo, faz, tipo_papel, tamano_papel, orientacion, anillado, abrochado, corte, observaciones, total, entrega, estado } = req.body;

  const datos = [fecha_entrega, hora_entrega, muestra, ubicacion_archivo, faz, tipo_papel, tamano_papel, orientacion, anillado, abrochado, corte, total, entrega, estado];
  
  datos.forEach(element => {
    if(element === '') return res.json({ registro: false, mensaje: `Hay campos sin completar` });
  });

  try {
    const [rows] = await pool.query(
      `INSERT INTO impresiones (
        id_cliente,
        nro_orden,
        fecha_creacion,
        atendido_por,
        fecha_entrega,
        hora_entrega,
        muestra,
        ubicacion_archivo,
        faz,
        tipo_papel,
        tamano_papel,
        orientacion,
        anillado,
        abrochado,
        corte,
        observaciones,
        total,
        entrega,
        estado
      ) VALUES
      (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)`,
      [parseInt(id_cliente), parseInt(nro_orden), fecha_creacion, atendido_por, fecha_entrega, hora_entrega, muestra, ubicacion_archivo, faz, tipo_papel, tamano_papel, orientacion, anillado, abrochado, corte, observaciones, parseInt(total), parseInt(entrega), estado]
    )
  
    if (rows.affectedRows == 1) {
      return res.json({ registro: true, mensaje: `Se registró la orden ${nro_orden}` })
    } else {
      return res.json({ registro: false, mensaje: `No se pudo realizar el registro`})
    }  
  } catch (error) {
    res.status(500).json(mjsError);
  }
  
  res.json();
};

module.exports = {
  crearOrden
}