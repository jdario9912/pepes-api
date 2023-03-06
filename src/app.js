const express = require("express");
const cors = require('cors');
const app = express();
const pool = require('./db');
const routerEmpleados = require('./routes/empleados.routes');
const routerLogin = require("./routes/login.routes");
const routerClientes = require("./routes/clientes.routes");
const routerBusqueda = require("./routes/busqueda.routes");
const routerOrdenesPendientes = require("./routes/ordenes.pendientes.routes");
const routerImpresiones = require("./routes/impresiones.routes");
const routerActualizarEstadoOrden = require("./routes/actualizar.estado.orden.routes");
const routerLoma = require("./routes/loma.routes");
const routerTalonarios = require("./routes/talonarios.routes");
const routerBonos = require("./routes/bonos.routes");
const routerDisenos = require("./routes/disenos.routes");
const routerPlotter = require("./routes/plotter.routes");
const routerRemeras = require("./routes/remeras.routes");
const routerTarjetas = require("./routes/tarjetas.routes");
const routerVolantes = require("./routes/volantes.routes");
const routerSellos = require("./routes/sellos.routes");
const routerVarios = require("./routes/varios.routes");
const routerPedido = require("./routes/pedido.routes");
const routerOrdenesCliente = require("./routes/ordenes.cliente.routes");

app.use(cors());
app.use(express.json());

// Routers
app.use('/api/empleados', routerEmpleados);
app.use('/api/login', routerLogin);
app.use('/api/clientes', routerClientes);
app.use('/api/busqueda', routerBusqueda);
app.use('/api/ordenes-pendientes', routerOrdenesPendientes);
app.use('/api/impresiones', routerImpresiones);
app.use('/api/loma', routerLoma);
app.use('/api/talonarios', routerTalonarios);
app.use('/api/bonos', routerBonos);
app.use('/api/disenos', routerDisenos);
app.use('/api/plotter', routerPlotter);
app.use('/api/remeras', routerRemeras);
app.use('/api/tarjetas', routerTarjetas);
app.use('/api/volantes', routerVolantes);
app.use('/api/sellos', routerSellos);
app.use('/api/varios', routerVarios);
app.use('/api/pedido', routerPedido);
app.use('/api/actualizar-estado-orden', routerActualizarEstadoOrden);
app.use('/api/ordenes-cliente', routerOrdenesCliente);

app.get("/", async (req, res) => {
  const [rows] = await pool.query(
    "SELECT 'Sistema para Pepes funcionando con base de datos' AS Mensaje"
  );
  res.json(rows[0]);
  pool.end();
});

app.use((req, res, next) => {
  res.status(404).json({mensaje: "Pagina no encontrada"})
})

module.exports = app;