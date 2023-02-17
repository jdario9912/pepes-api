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

const obtenerCliente = async (req, res) => {
  const idCliente = req.params.id;
  
  try {
    const [rows] = await pool.query(
      `SELECT * FROM clientes WHERE id = ?`,
      [idCliente]
    );
  
    if(rows.length == 0)
      return res.json({
        ok: false,
        cliente: null  
      }).status(404);
    
    res.json({
      ok: true,
      cliente: rows[0]
    })
  } catch (error) {
    console.log(error);
  }
};

const crearCliente = async (req, res) => {
  const { nombre, telefono, email, observaciones } = req.body;

  if(nombre == '' || telefono == '') 
    return res
      .status(404)
      .json({
        mensaje: 'Los campos Nombre y Teléfono son obligatorios.',
        clienteRegistrado: false
      })
  ;

  try {
    const [rows] = await pool.query(
      `SELECT nombre FROM clientes WHERE nombre = '${nombre}'`
    );

    if(rows.length != 0)
      return res.json({ 
        mensaje: 'El cliente ya está registrado',
        clienteRegistrado: false
      })
    ;
    
    const [row] = await pool.query(
      'INSERT INTO clientes (nombre, telefono, email, observaciones) VALUES (?, ?, ?, ?)',
      [nombre, telefono, email, observaciones]
    );

    if(row.affectedRows > 0){
      const [idCliente] = await pool.query(
        `SELECT id FROM clientes WHERE nombre = ?`,
        [nombre]
      )
      res.json({ 
        mensaje: 'Cliente registrado!',
        clienteRegistrado: true,
        idCliente: idCliente[0].id
      })
    } else  
      res.json({ 
        mensaje: 'Algo salió mal',
        clienteRegistrado: false})
    ;
  } catch (error) {
    console.log(error);
  }
};

module.exports = {
  obtenerClientes,
  obtenerCliente,
  crearCliente
}