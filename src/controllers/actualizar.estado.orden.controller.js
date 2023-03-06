const pool = require('../db');

const actualizarEstadoOrden = async (req, res) => {
  const { nro_orden, tipo_trabajo, estado} = req.body;
  try {
    const [row] = await pool.query(
      `UPDATE ${tipo_trabajo} SET estado=? WHERE nro_orden=?`,
      [estado, nro_orden]
    );

    if(row.affectedRows == 0)
      return res.json({actualizado: false, mensaje: `No se pudo actualizar la orden ${nro_orden}`})
    ;

    res.json({actualizado: true, mensaje: null});
  } catch (error) {
    console.log(error);
    res.status(500).json({mensaje: 'Algo salio mal'});
  }
};

module.exports = {
  actualizarEstadoOrden
}