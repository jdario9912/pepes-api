-- ESTE PROCEDURE BUSCA TODAS LAS ORDENES PENDIENTES

DELIMITER $$
CREATE PROCEDURE buscar_ordenes_pendientes()
BEGIN
SELECT impresiones.nro_orden as Orden, clientes.nombre as Cliente, impresiones.tipo_trabajo as Tipo, impresiones.fecha_entrega as Fecha, impresiones.hora_entrega as Hora
FROM clientes
INNER JOIN impresiones
ON clientes.id = impresiones.id_cliente
WHERE impresiones.estado = 'pendiente';

SELECT loma.nro_orden as Orden, clientes.nombre as Cliente, loma.tipo_trabajo as Tipo, loma.fecha_entrega as Fecha, loma.hora_entrega as Hora
FROM clientes
INNER JOIN loma
ON clientes.id = loma.id_cliente
WHERE loma.estado = 'pendiente';

SELECT talonarios.nro_orden as Orden, clientes.nombre as Cliente, talonarios.tipo_trabajo as Tipo, talonarios.fecha_entrega as Fecha, talonarios.hora_entrega as Hora
FROM clientes
INNER JOIN talonarios
ON clientes.id = talonarios.id_cliente
WHERE talonarios.estado = 'pendiente';

SELECT bonos.nro_orden as Orden, clientes.nombre as Cliente, bonos.tipo_trabajo as Tipo, bonos.fecha_entrega as Fecha, bonos.hora_entrega as Hora
FROM clientes
INNER JOIN bonos
ON clientes.id = bonos.id_cliente
WHERE bonos.estado = 'pendiente';

SELECT disenos.nro_orden as Orden, clientes.nombre as Cliente, disenos.tipo_trabajo as Tipo, disenos.fecha_entrega as Fecha, disenos.hora_entrega as Hora
FROM clientes
INNER JOIN disenos
ON clientes.id = disenos.id_cliente
WHERE disenos.estado = 'pendiente';

SELECT plotter.nro_orden as Orden, clientes.nombre as Cliente, plotter.tipo_trabajo as Tipo, plotter.fecha_entrega as Fecha, plotter.hora_entrega as Hora
FROM clientes
INNER JOIN plotter
ON clientes.id = plotter.id_cliente
WHERE plotter.estado = 'pendiente';

SELECT remeras.nro_orden as Orden, clientes.nombre as Cliente, remeras.tipo_trabajo as Tipo, remeras.fecha_entrega as Fecha, remeras.hora_entrega as Hora
FROM clientes
INNER JOIN remeras
ON clientes.id = remeras.id_cliente
WHERE remeras.estado = 'pendiente';

SELECT tarjetas.nro_orden as Orden, clientes.nombre as Cliente, tarjetas.tipo_trabajo as Tipo, tarjetas.fecha_entrega as Fecha, tarjetas.hora_entrega as Hora
FROM clientes
INNER JOIN tarjetas
ON clientes.id = tarjetas.id_cliente
WHERE tarjetas.estado = 'pendiente';

SELECT volantes.nro_orden as Orden, clientes.nombre as Cliente, volantes.tipo_trabajo as Tipo, volantes.fecha_entrega as Fecha, volantes.hora_entrega as Hora
FROM clientes
INNER JOIN volantes
ON clientes.id = volantes.id_cliente
WHERE volantes.estado = 'pendiente';

SELECT sellos.nro_orden as Orden, clientes.nombre as Cliente, sellos.tipo_trabajo as Tipo, sellos.fecha_entrega as Fecha, sellos.hora_entrega as Hora
FROM clientes
INNER JOIN sellos
ON clientes.id = sellos.id_cliente
WHERE sellos.estado = 'pendiente';

SELECT varios.nro_orden as Orden, clientes.nombre as Cliente, varios.tipo_trabajo as Tipo, varios.fecha_entrega as Fecha, varios.hora_entrega as Hora
FROM clientes
INNER JOIN varios
ON clientes.id = varios.id_cliente
WHERE varios.estado = 'pendiente';
END$$

DELIMITER ;