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
};

const parsearValoresDisenos = (valores) => {
  const nuevosValores = [];
  for (let i = 0; i < valores.length; i++) {
    if (i == 6 || i == 7 || i == 8) {
      const element = parseInt(valores[i]);
      nuevosValores.push(element);
      continue
    };
    nuevosValores.push(valores[i]);
  };
  return nuevosValores;
};

const parsearValoresImpresiones = (valores) => {
  const nuevosValores = [];
  for (let i = 0; i < valores.length; i++) {
    if (i == 12 || i == 13 || i == 14) {
      const element = parseInt(valores[i]);
      nuevosValores.push(element);
      continue
    };
    nuevosValores.push(valores[i]);
  };
  return nuevosValores;
};

const parsearValoresLoma = (valores) => {
  const nuevosValores = [];
  for (let i = 0; i < valores.length; i++) {
    if (i == 12 || i == 13 ||  i == 14) {
      const element = parseInt(valores[i]);
      nuevosValores.push(element);
      continue
    };
    nuevosValores.push(valores[i]);
  };
  return nuevosValores;
};

const parsearValoresPlotter = (valores) => {
  const nuevosValores = [];
  for (let i = 0; i < valores.length; i++) {
    if (i == 5 || i == 9 || i == 10 || i == 11) {
      const element = parseInt(valores[i]);
      nuevosValores.push(element);
      continue
    };
    nuevosValores.push(valores[i]);
  };
  return nuevosValores;
};

const parsearValoresRemeras = (valores) => {
  const nuevosValores = [];
  for (let i = 0; i < valores.length; i++) {
    if (i == 9 || i == 11 || i == 12 || i == 13) {
      const element = parseInt(valores[i]);
      nuevosValores.push(element);
      continue
    };
    nuevosValores.push(valores[i]);
  };
  return nuevosValores;
};

const parsearValoresSellos = (valores) => {
  const nuevosValores = [];
  for (let i = 0; i < valores.length; i++) {
    if (i == 8 || i == 9 || i == 10) {
      const element = parseInt(valores[i]);
      nuevosValores.push(element);
      continue
    };
    nuevosValores.push(valores[i]);
  };
  return nuevosValores;
};

const parsearValoresTalonarios = (valores) => {
  const nuevosValores = [];
  for (let i = 0; i < valores.length; i++) {
    if (i == 4 || i == 9 || i == 15 || i == 16 || i == 17) {
      const element = parseInt(valores[i]);
      nuevosValores.push(element);
      continue
    };
    nuevosValores.push(valores[i]);
  };
  return nuevosValores;
};

const parsearValoresTarjetas = (valores) => {
  const nuevosValores = [];
  for (let i = 0; i < valores.length; i++) {
    if (i == 4 || i == 9 || i == 10 || i == 11) {
      const element = parseInt(valores[i]);
      nuevosValores.push(element);
      continue
    };
    nuevosValores.push(valores[i]);
  };
  return nuevosValores;
};

const parsearValoresVarios = (valores) => {
  const nuevosValores = [];
  for (let i = 0; i < valores.length; i++) {
    if (i == 5 || i == 6 || i == 7) {
      const element = parseInt(valores[i]);
      nuevosValores.push(element);
      continue
    };
    nuevosValores.push(valores[i]);
  };
  return nuevosValores;
};

const parsearValoresVolantes = (valores) => {
  const nuevosValores = [];
  for (let i = 0; i < valores.length; i++) {
    if (i == 5 || i == 9 || i == 10 || i == 11) {
      const element = parseInt(valores[i]);
      nuevosValores.push(element);
      continue
    };
    nuevosValores.push(valores[i]);
  };
  return nuevosValores;
};

module.exports = {
  parsearValoresBonos,
  parsearValoresDisenos,
  parsearValoresImpresiones,
  parsearValoresLoma,
  parsearValoresPlotter,
  parsearValoresRemeras,
  parsearValoresSellos,
  parsearValoresTalonarios,
  parsearValoresTarjetas,
  parsearValoresVarios,
  parsearValoresVolantes
}
