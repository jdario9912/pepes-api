const pool = require('../db');
const msjError = require('../models/mjs.error');

const buscarPedido = async (req, res) => {
  const numero = req.params.numero;

  if(isNaN(numero)) return res.status(500).json(msjError);
     
  try {
    const [filas] = await pool.query(
      `CALL buscar_pedido(${parseInt(numero)})`
      );
      
    const pedido = filas.filter(fila => fila.length > 0);

    if(pedido.length == 0)
      return res.status(404).json({mensaje: `La orden ${numero} no existe`})
    
    res.json({ resultados: pedido[0][0], mensaje: false });
  } catch (error) {
    console.log(error);
    return res.status(500).json(msjError);  
  }
  
};

module.exports = {
  buscarPedido
}