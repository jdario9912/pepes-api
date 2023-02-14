const pool = require('../db');
const msjError = require('../models/mjs.error');

const obtenerBusqueda = async (req, res) => {
  const busqueda = req.params.busqueda;

  if(isNaN(busqueda)){
    try {
      const [rows] = await pool.query(
        `SELECT * FROM clientes WHERE nombre LIKE '%${busqueda}%'`
      );

      if(rows.length == 0)
        return res.status(404).json('No se encontraron resultados');

      res.json(rows);   
    } catch (error) {
      console.log(error);
      return res.status(500).json(msjError);
    }
  }else{    
    try {
      const [filas] = await pool.query(
        `CALL buscar_orden_por_numero(${busqueda})`
        );
        
        // if(filas == 0)
        //   return res.status(404).json('No se encontró la orden')
        // ;
        
      res.send(filas);
    } catch (error) {
      console.log(error);
      return res.status(500).json(msjError);  
    }
  }
};

module.exports = {
  obtenerBusqueda
}