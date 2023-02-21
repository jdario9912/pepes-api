const invertirFecha = (fecha) => {
  return fecha.split('/').reverse().join('');
}

module.exports = invertirFecha;