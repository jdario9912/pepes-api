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
const routerActualizarEstadoOrden = require("./routes/actualizar.estado.orden");

app.use(cors());
app.use(express.json());

// Routers
app.use('/api/empleados', routerEmpleados);
app.use('/api/login', routerLogin);
app.use('/api/clientes', routerClientes);
app.use('/api/busqueda', routerBusqueda);
app.use('/api/ordenes-pendientes', routerOrdenesPendientes);
app.use('/api/impresiones', routerImpresiones);
app.use('/api/actualizar-estado-orden', routerActualizarEstadoOrden);

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