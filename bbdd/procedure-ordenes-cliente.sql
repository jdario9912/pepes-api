-- ESTE PROCEDURE BUSCA ORDENES POR EL ID DEL CLIENTE
-- lo uso en 'ordenes.cliente.controller.js'

DELIMITER $$
CREATE PROCEDURE ordenes_cliente(IN id INT(2))
BEGIN
SELECT impresiones.nro_orden, impresiones.tipo_trabajo, impresiones.fecha_entrega, impresiones.fecha_creacion, impresiones.estado, impresiones.atendido_por
FROM clientes
INNER JOIN impresiones
ON clientes.id = impresiones.id_cliente
WHERE clientes.id = id;

SELECT loma.nro_orden, loma.tipo_trabajo, loma.fecha_entrega, loma.fecha_creacion, loma.estado, loma.atendido_por
FROM clientes
INNER JOIN loma
ON clientes.id = loma.id_cliente
WHERE clientes.id = id;

SELECT talonarios.nro_orden, talonarios.tipo_trabajo, talonarios.fecha_entrega, talonarios.fecha_creacion, talonarios.estado, talonarios.atendido_por
FROM clientes
INNER JOIN talonarios
ON clientes.id = talonarios.id_cliente
WHERE clientes.id = id;

SELECT bonos.nro_orden, bonos.tipo_trabajo, bonos.fecha_entrega, bonos.fecha_creacion, bonos.estado, bonos.atendido_por
FROM clientes
INNER JOIN bonos
ON clientes.id = bonos.id_cliente
WHERE clientes.id = id;

SELECT disenos.nro_orden, disenos.tipo_trabajo, disenos.fecha_entrega, disenos.fecha_creacion, disenos.estado, disenos.atendido_por
FROM clientes
INNER JOIN disenos
ON clientes.id = disenos.id_cliente
WHERE clientes.id = id;

SELECT plotter.nro_orden, plotter.tipo_trabajo, plotter.fecha_entrega, plotter.fecha_creacion, plotter.estado, plotter.atendido_por
FROM clientes
INNER JOIN plotter
ON clientes.id = plotter.id_cliente
WHERE clientes.id = id;

SELECT remeras.nro_orden, remeras.tipo_trabajo, remeras.fecha_entrega, remeras.fecha_creacion, remeras.estado, remeras.atendido_por
FROM clientes
INNER JOIN remeras
ON clientes.id = remeras.id_cliente
WHERE clientes.id = id;

SELECT tarjetas.nro_orden, tarjetas.tipo_trabajo, tarjetas.fecha_entrega, tarjetas.fecha_creacion, tarjetas.estado, tarjetas.atendido_por
FROM clientes
INNER JOIN tarjetas
ON clientes.id = tarjetas.id_cliente
WHERE clientes.id = id;

SELECT volantes.nro_orden, volantes.tipo_trabajo, volantes.fecha_entrega, volantes.fecha_creacion, volantes.estado, volantes.atendido_por
FROM clientes
INNER JOIN volantes
ON clientes.id = volantes.id_cliente
WHERE clientes.id = id;

SELECT sellos.nro_orden, sellos.tipo_trabajo, sellos.fecha_entrega, sellos.fecha_creacion, sellos. estado, sellos.atendido_por
FROM clientes
INNER JOIN sellos
ON clientes.id = sellos.id_cliente
WHERE clientes.id = id;

SELECT varios.nro_orden, varios.tipo_trabajo, varios.fecha_entrega, varios.fecha_creacion, varios.estado, varios.atendido_por
FROM clientes
INNER JOIN varios
ON clientes.id = varios.id_cliente
WHERE clientes.id = id;
END$$

DELIMITER ;