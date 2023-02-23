const invertirFecha = (fecha) => {
  if(fecha.includes('/')) return fecha.split('/').reverse().join('');

  if(fecha.includes('-')) return fecha.split('-').reverse().join('');
}

module.exports = invertirFecha;