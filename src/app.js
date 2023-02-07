const express = require("express");
const cors = require('cors');
const app = express();
const pool = require('./db');
const routerEmpleados = require('./routes/empleados.routes');
const routerLogin = require("./routes/login.routes");
const routerClientes = require("./routes/clientes.routes");

app.use(cors());
app.use(express.json());

// Routers
app.use('/api/empleados', routerEmpleados);
app.use('/api/login', routerLogin);
app.use('/api/clientes', routerClientes);

app.get("/", async (req, res) => {
  const [rows] = await pool.query(
    "SELECT 'Sistema para Pepes funcionando con base de datos' AS Mensaje"
  );
  res.json(rows[0]);
});

app.use((req, res, next) => {
  res.status(404).json({mensaje: "Pagina no encontrada"})
})

module.exports = app;