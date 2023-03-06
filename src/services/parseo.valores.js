const parsearValoresBonos = (valores) => {
  const nuevosValores = [];
  for (let i = 0; i < valores.length; i++) {
    if (i == 5 || i == 6 || i == 7 || i == 8 || i == 10 || i == 11 ||  i == 12) {
      const element = parseInt(valores[i]);
      nuevosValores.push(element);
      continue
    };
    nuevosValores.push(valores[i]);
  };
  return nuevosValores;
}

module.exports = {
  parsearValoresBonos
}
