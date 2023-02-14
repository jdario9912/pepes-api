const pool = require('../db');

const obtenerBusqueda = async (req, res) => {
  const busqueda = req.params.busqueda;

  if(typeof busqueda == "number"){
    try {
      const [row] = await pool.query(
        `SELECT * FROM impresiones WHERE nro_orden = ${busqueda}`
      );

      if(row == 0)
      return res.status(404).json('No se encontraron resultados')
    } catch (error) {
      console.log(error);
      return res.status(500).json({ mensaje: "Algo salio mal"});  
    }
  }

  try {
    const [rows] = await pool.query(
      `SELECT * FROM clientes WHERE nombre LIKE '%${busqueda}%'`
    );

    if(rows.length == 0)
      return res.status(404).json('No se encontraron resultados')

    res.json(rows);   
  } catch (error) {
    console.log(error);
    return res.status(500).json({ mensaje: "Algo salio mal"});
  }

  res.send(busqueda);
};

module.exports = {
  obtenerBusqueda
}