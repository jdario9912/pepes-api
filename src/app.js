const express = require("express");
const cors = require('cors');
const app = express();
const pool = require('./db');
const routerEmpleados = require('./routes/empleados.routes');

app.use(cors());
app.use(express.json());

// Routers
app.use('/api/empleados', routerEmpleados);

app.get("/", async (req, res) => {
  console.log(req);
  const [rows] = await pool.query(
    "SELECT 'Sistema para Pepes funcionando con base de datos' AS detalle"
  );
  res.json(rows[0]);
});

app.use((req, res, next) => {
  res.status(404).json({mensaje: "Pagina no encontrada"})
})

module.exports = app;