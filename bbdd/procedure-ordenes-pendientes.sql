-- ESTE PROCEDURE BUSCA TODAS LAS ORDENES PENDIENTES

DELIMITER $$
CREATE PROCEDURE buscar_ordenes_pendientes()
BEGIN
SELECT clientes.id as id_cliente, impresiones.id, impresiones.nro_orden, clientes.nombre, impresiones.fecha_creacion, impresiones.tipo_trabajo, impresiones.fecha_entrega, impresiones.hora_entrega
FROM clientes
INNER JOIN impresiones
ON clientes.id = impresiones.id_cliente
WHERE impresiones.estado = 'pendiente';

SELECT clientes.id as id_cliente, loma.id, loma.nro_orden, clientes.nombre, loma.fecha_creacion, loma.tipo_trabajo, loma.fecha_entrega, loma.hora_entrega
FROM clientes
INNER JOIN loma
ON clientes.id = loma.id_cliente
WHERE loma.estado = 'pendiente';

SELECT clientes.id as id_cliente, talonarios.id, talonarios.nro_orden, clientes.nombre, talonarios.fecha_creacion, talonarios.tipo_trabajo, talonarios.fecha_entrega, talonarios.hora_entrega
FROM clientes
INNER JOIN talonarios
ON clientes.id = talonarios.id_cliente
WHERE talonarios.estado = 'pendiente';

SELECT clientes.id as id_cliente, bonos.id, bonos.nro_orden, clientes.nombre, bonos.fecha_creacion, bonos.tipo_trabajo, bonos.fecha_entrega, bonos.hora_entrega
FROM clientes
INNER JOIN bonos
ON clientes.id = bonos.id_cliente
WHERE bonos.estado = 'pendiente';

SELECT clientes.id as id_cliente, disenos.id, disenos.nro_orden, clientes.nombre, disenos.fecha_creacion, disenos.tipo_trabajo, disenos.fecha_entrega, disenos.hora_entrega
FROM clientes
INNER JOIN disenos
ON clientes.id = disenos.id_cliente
WHERE disenos.estado = 'pendiente';

SELECT clientes.id as id_cliente, plotter.id, plotter.nro_orden, clientes.nombre, plotter.fecha_creacion, plotter.tipo_trabajo, plotter.fecha_entrega, plotter.hora_entrega
FROM clientes
INNER JOIN plotter
ON clientes.id = plotter.id_cliente
WHERE plotter.estado = 'pendiente';

SELECT clientes.id as id_cliente, remeras.id, remeras.nro_orden, clientes.nombre, remeras.fecha_creacion, remeras.tipo_trabajo, remeras.fecha_entrega, remeras.hora_entrega
FROM clientes
INNER JOIN remeras
ON clientes.id = remeras.id_cliente
WHERE remeras.estado = 'pendiente';

SELECT clientes.id as id_cliente, tarjetas.id, tarjetas.nro_orden, clientes.nombre, tarjetas.fecha_creacion, tarjetas.tipo_trabajo, tarjetas.fecha_entrega, tarjetas.hora_entrega
FROM clientes
INNER JOIN tarjetas
ON clientes.id = tarjetas.id_cliente
WHERE tarjetas.estado = 'pendiente';

SELECT clientes.id as id_cliente, volantes.id, volantes.nro_orden, clientes.nombre, volantes.fecha_creacion, volantes.tipo_trabajo, volantes.fecha_entrega, volantes.hora_entrega
FROM clientes
INNER JOIN volantes
ON clientes.id = volantes.id_cliente
WHERE volantes.estado = 'pendiente';

SELECT clientes.id as id_cliente, sellos.id, sellos.nro_orden, clientes.nombre, sellos.fecha_creacion, sellos.tipo_trabajo, sellos.fecha_entrega, sellos.hora_entrega
FROM clientes
INNER JOIN sellos
ON clientes.id = sellos.id_cliente
WHERE sellos.estado = 'pendiente';

SELECT clientes.id as id_cliente, varios.id, varios.nro_orden, clientes.nombre, varios.fecha_creacion, varios.tipo_trabajo, varios.fecha_entrega, varios.hora_entrega
FROM clientes
INNER JOIN varios
ON clientes.id = varios.id_cliente
WHERE varios.estado = 'pendiente';
END$$

DELIMITER ;