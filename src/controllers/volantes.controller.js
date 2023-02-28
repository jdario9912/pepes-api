const pool = require('../db');
const mjsError = require('../models/mjs.error');
const camposVacios = require('../services/valida.campos');
const handleError = require('../services/handleError');

const crearOrden = async (req, res) => {
  const { id_cliente, nro_orden, fecha_creacion, atendido_por, fecha_entrega, hora_entrega, muestra, tipo, tamano, cantidad, impresion, ubicacion_diseno, observaciones, total, entrega, estado } = req.body;
  const datos = [parseInt(id_cliente), parseInt(nro_orden), fecha_creacion, atendido_por, fecha_entrega, hora_entrega, muestra, tipo, tamano, cantidad, impresion, ubicacion_diseno, observaciones, parseInt(total), parseInt(entrega), estado];
  const campos = [fecha_entrega, hora_entrega, muestra, tipo, impresion, ubicacion_diseno, total, entrega];
  
  if(camposVacios(campos)) return res.json({ registrado: false, mensaje: 'Hay datos sin completar'});
  
  try {
    const [rows] = await pool.query(
      `INSERT INTO volantes (
        id_cliente,
        nro_orden,
        fecha_creacion,
        atendido_por,
        fecha_entrega,
        hora_entrega,
        muestra,
        tipo,
        tamano,
        cantidad,
        impresion,
        ubicacion_diseno,
        observaciones,
        total,
        entrega,
        estado
      ) VALUES
      (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)`,
      datos
    );
  
    if (rows.affectedRows == 1)
      return res.json({ registro: true, mensaje: `Se registró la orden ${nro_orden}`, nro_orden });
    else
      return res.json({ registro: false, mensaje: `No se pudo registrar la orden n=${nro_orden}`});
      
  } catch (error) {
    handleError(error, res, mjsError);
  }
};

module.exports = {
  crearOrden
};