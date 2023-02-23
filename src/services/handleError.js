const handleError = (error, res, mensaje) => {
  console.log(error);
  res.status(500).json(mensaje);
}

module.exports = handleError;