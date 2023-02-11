const pool = require('../db');

const obtenerClientes = async (req, res) => {
  if(req.query.nombre){
    try {
      const [rows] = await pool.query(`SELECT * FROM clientes WHERE nombre LIKE '%${req.query.nombre}%'`);
      return res.json(rows);
    } catch (error) {
      return res.status(500).json({ mensaje: "Algo salio mal"});  
    }
  }
  try {
    const [rows] = await pool.query("SELECT * FROM clientes ORDER BY id DESC");
    res.json(rows);
  } catch (error) {
    return res.status(500).json({ mensaje: "Algo salio mal"});
  }
};

const crearCliente = async (req, res) => {
  const { nombre, telefono } = req.body;

  if(nombre == '' || telefono == '') 
    return res
      .status(404)
      .json({
        mensaje: 'Los campos Nombre y Telefono son obligatorios',
        registradoOk: false})
  ;

  try {
    const [rows] = await pool.query(
      `SELECT nombre FROM clientes WHERE nombre = '${nombre}'`
    );

    console.log('filas devueltas', rows.length);

    if(rows.length > 0)
      return res.json({ mensaje: 'El cliente ya esta registrado'})
    else
      return res.json({ mensaje: 'No se encontraron registros con ese nombre'})
    
    
  } catch (error) {
    console.log(error);
  }

  // try {

  //   const [rows] = await pool.query(
  //     'INSERT INTO clientes (nombre, telefono, email, observaciones) VALUES (?, ?, ?, ?)',
  //     [nombre, telefono, email, observaciones]
  //   );

  //   rows.affectedRows > 0 ? res.send(true) : res.send(false);
  // } catch (error) {
  //   return res.status(500).json({ mensaje: "Algo salio mal"});    
  // }
}

module.exports = {
  obtenerClientes,
  crearCliente
}