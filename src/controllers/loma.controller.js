const pool = require('../db');
const mjsError = require('../models/mjs.error');
const handleError = require('../services/handleError');
const camposVacios = require('../services/valida.campos');

const crearOrden = async (req, res) => {
  const {id_cliente, nro_orden, fecha_creacion, atendido_por, fecha_entrega, hora, muestra, ubicacion_archivo, material, orientacion, bolsillo, corte, ojales, troquelado, portabaner, observaciones, total, entrega, estado} = req.body;
  const datos = [parseInt(id_cliente), parseInt(nro_orden), fecha_creacion, atendido_por, fecha_entrega, hora, muestra, ubicacion_archivo, material, orientacion, bolsillo, corte, ojales, troquelado, portabaner, observaciones, parseInt(total), parseInt(entrega), estado];
  const campos = [fecha_entrega, hora, muestra, ubicacion_archivo, orientacion, corte, ojales, troquelado, portabaner];

  if(camposVacios(campos)) return res.json({ registrado: false, mensaje: 'Hay datos sin completar'});

  try {
    const [rows] = await pool.query(
      `INSERT INTO loma (
        id_cliente,
        nro_orden,
        fecha_creacion,
        atendido_por,
        fecha_entrega,
        hora_entrega,
        muestra,
        ubicacion_archivo,
        material,
        orientacion,
        bolsillo,
        corte,
        ojales,
        troquelado,
        portabaner,
        observaciones,
        total,
        entrega,
        estado
      ) VALUES 
      (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)`,
      datos
    );

    if (rows.affectedRows == 1)
      return res.json({ registro: true, mensaje: `Se registró la orden ${nro_orden}` });
    else
      return res.json({ registro: false, mensaje: `No se pudo registrar la orden n=${nro_orden}`});

  } catch (error) {
    handleError(error, res, mjsError);    
  }
}

module.exports = {
  crearOrden
}