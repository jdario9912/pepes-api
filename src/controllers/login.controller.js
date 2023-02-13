const pool = require('../db');

// POST
const login = async (req, res) => {
  const { nickname, password } = req.body;

  if(nickname === "" || password === "")
    return res.status(404).json({ mensaje: 'No se puede ejecutar la petición.'})
  ;
  
  try {
    const [rows] = await pool.query(
      `SELECT nickname, password, permisions FROM empleados WHERE nickname = ?`,
      [nickname]
    );
    
    if (rows.length == 0)
      return res.json({ mensaje: 'El usuario no existe.', auth: false, permisions: false });
    else{
      if(password !== rows[0].password)
        return res.json({ mensaje: 'Contraseña incorrecta.', auth: false, permisions: false });
    };

    if(rows[0].permisions === 'user')
      return res.json({ mensaje: 'Login ok.', auth: true, permisions: false })
    ;

    res.json({ mensaje: 'Login ok.', auth: true, permisions: true });

    pool.end();

  } catch (error) {
    return res.status(500).json({ 
      mensaje: "Algo salio mal.",
      error: error
    });
  }
};

module.exports = {
  login
}