const pool = require('../db');

// POST
const login = async (req, res) => {
  const { nickname, password } = req.body;
  
  try {
    const [rows] = await pool.query(
      `SELECT nickname, password FROM empleados WHERE nickname = ? AND password = ?`,
      [nickname, password]
    );
    
    if (rows.length == 0)
      return res.json({ auth: false })
    ;

    res.json({ auth: true });

  } catch (error) {
    return res.status(500).json({ 
      mensaje: "Algo salio mal",
      error: error
    });
  }
};

module.exports = {
  login
}