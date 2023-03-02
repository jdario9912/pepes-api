const pool = require('../db');
const mjsError = require('../models/mjs.error');
const camposVacios = require('../services/valida.campos');
const handleError = require('../services/handleError');

const crearOrden = async (req, res) => {
  const {id_cliente, nro_orden, fecha_creacion, atendido_por, fecha_entrega, hora_entrega, muestra, tipo, tamano, desde_numero, cantidad, numeradores, lotes, observaciones, total, entrega, estado} = req.body;
  const datos = [parseInt(id_cliente), parseInt(nro_orden), fecha_creacion, atendido_por, fecha_entrega, hora_entrega, muestra, tipo, tamano, parseInt(desde_numero), parseInt(cantidad), parseInt(numeradores), parseInt(lotes), observaciones, parseInt(total), parseInt(entrega), estado];
  const campos = [fecha_entrega, hora_entrega, muestra, tipo, parseInt(desde_numero), parseInt(cantidad), parseInt(numeradores), parseInt(lotes), parseInt(total), parseInt(entrega)];

  if(camposVacios(campos)) return res.json({ registrado: false, mensaje: 'Hay datos sin completar'});

  try {
    const [rows] = await pool.query(
      `INSERT INTO bonos (
        id_cliente,
        nro_orden,
        fecha_creacion,
        atendido_por,
        fecha_entrega,
        hora_entrega,
        muestra,
        tipo,
        tamano,
        desde_numero,
        cantidad,
        numeradores,
        lotes,
        observaciones,
        total,
        entrega,
        estado
      ) VALUES
      (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)`, 
      datos);

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
    const [rows] = await pool.query(`SELECT * FROM bonos WHERE nro_orden = ${nro}`);
  
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
  
};

module.exports = {
  crearOrden,
  obtenerOrden,
  actualizarOrden
}