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
  const { nombre, telefono, email, observaciones } = req.body;

  try {
    const [rows] = await pool.query(
      'INSERT INTO clientes (nombre, telefono, email, observaciones) VALUES (?, ?, ?, ?)',
      [nombre, telefono, email, observaciones]
    );

    rows.affectedRows > 0 ? res.send(true) : res.send(false);
  } catch (error) {
    return res.status(500).json({ mensaje: "Algo salio mal"});    
  }
}

module.exports = {
  obtenerClientes,
  crearCliente
}