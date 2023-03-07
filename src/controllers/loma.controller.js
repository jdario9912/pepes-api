const pool = require('../db');
const mjsError = require('../models/mjs.error');
const handleError = require('../services/handleError');
const camposVacios = require('../services/valida.campos');
const { parsearValoresLoma } = require('../services/parseo.valores');

const crearOrden = async (req, res) => {
  const {id_cliente, nro_orden, fecha_creacion, atendido_por, fecha_entrega, hora_entrega, muestra, ubicacion_archivo, material, orientacion, bolsillo, corte, ojales, troquelado, portabaner, observaciones, total, entrega, estado, abono} = req.body;
  const datos = [parseInt(id_cliente), parseInt(nro_orden), fecha_creacion, atendido_por, fecha_entrega, hora_entrega, muestra, ubicacion_archivo, material, orientacion, bolsillo, corte, ojales, troquelado, portabaner, observaciones, parseInt(total), parseInt(entrega), estado, abono];
  const campos = [fecha_entrega, hora_entrega, muestra, ubicacion_archivo, orientacion, corte, ojales, troquelado, portabaner];

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
        estado,
        abono
      ) VALUES 
      (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)`,
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

const obtenerOrden = async (req, res) => {
  const { nro } = req.params;

  try {
    const [rows] = await pool.query(`SELECT * FROM loma WHERE nro_orden = ${nro}`);
    
    if (rows.length == 0) return res.json({ 
      busqueda: false, 
      data: false, 
      mensaje: 'No se encontraron resultados'
    });
  
    res.json({ busqueda: true, data: rows[0], mensaje: 'Pedido encontrado' });
  } catch (error) {
    console.log(error);
    handleError(error, res, mjsError);
  }
};

const actualizarOrden = async (req, res) => {
  const values = Object.values(req.body);

  try {
    const [rows] = await pool.query(
      `UPDATE loma
       SET
       fecha_entrega = ?,
       hora_entrega = ?,
       muestra = ?,
       ubicacion_archivo = ?,
       material = ?,
       orientacion = ?,
       bolsillo = ?,
       corte = ?,
       ojales = ?,
       troquelado = ?,
       portabaner = ?,
       observaciones = ?,
       total = ?,
       entrega = ?,
       abono = ?
        WHERE nro_orden = ?`,
      parsearValoresLoma(values)
    );

    if(rows.affectedRows == 0) 
      return res.json({ actualizado: false, mensaje: `No se pudo actualizar el pedido`})
    ;

    res.json({ actualizado: true, mensaje: null});
  } catch (error) {
    console.log(error);
    handleError(error, res, mjsError);
  }
};

module.exports = {
  crearOrden,
  obtenerOrden,
  actualizarOrden
}