const pool = require('../db');

// GET
const obtenerEmpleados = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM empleados");
    res.json(rows);
  } catch (error) {
    return res.status(500).json({ mensaje: "Algo salio mal"});
  }
};

const obtenerEmpleado = async (req, res) => {
  const { nickname } = req.params;

  try {
    const [rows] = await pool.query(
      `SELECT * FROM empleados WHERE nickname = ?`,
      [nickname],
    );
    if(rows.length > 0)
      res.json(rows[0]);  
    else
      res.status(404).json({ mensaje: `El empleado ${nickname} no esta registrado`});
  } catch (error) {
    return res.status(500).json({ mensaje: "Algo salio mal"});
  }
};

// POST
const crearEmpleadoUser = async (req, res) => {
  const { nickname, email, password } = req.body;

  try {
    const [rows] = await pool.query(
      'INSERT INTO empleados (nickname, email, password, permisions) VALUES (?, ?, ?, "user")',
      [nickname, email, password]
    );
    
    if(rows.affectedRows > 0)
      res.send({ id: rows.insertId, nickname, email });
    else  
      res.send('No se pudo crear el registro');
  } catch (error) {
    return res.status(500).json({ mensaje: "Algo salio mal"});
  }
};

// PUT
const actualizarEmpleado = async (req, res) => {
  const { id } = req.params;
  const { nickname, email, password } = req.body;

  try {
    const [result] = await pool.query(
      `UPDATE empleados 
      SET nickname = IFNULL(?, nickname), email = IFNULL(?, email), password = IFNULL(?, password)
      WHERE id = ?`,
      [nickname, email, password, id]
    );

    if(result.affectedRows === 0)
      return res.status(404).json({ mensaje: "Empleado no encontrado" });

    res.send(`El usuario ${nickname} ha sido actualizado correctamente`);
  } catch (error) {
    return res.status(500).json({ mensaje: "Algo salio mal"});
  }
};

// DELETE
const eliminarEmpleado = async (req, res) => {
  const { id } = req.params;
  
  try {
    const [result] = await pool.query(
      'DELETE FROM empleados WHERE id = ?',
      [id]
    )
    if(result.affectedRows == 1)
      res.sendStatus(204);
    else
      res.status(404).json({ mensaje: `No se pudo eliminar el empleado ${id}`})
  } catch (error) {
    return res.status(500).json({ mensaje: "Algo salio mal"});
  }
}

module.exports = {
  obtenerEmpleados,
  obtenerEmpleado,
  crearEmpleadoUser,
  actualizarEmpleado,
  eliminarEmpleado
}