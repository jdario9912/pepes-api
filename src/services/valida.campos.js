const camposVacios = (campos) => {
  let bandera = false;
  
  campos.forEach(campo => {
    if(campo == '') bandera = true
  });
  
  return bandera;
};

module.exports = camposVacios;