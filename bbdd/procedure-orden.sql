-- ESTE PROCEDURE BUSCA UNA ORDEN SEGUN NUMERO DE ORDEN

DELIMITER $$
CREATE PROCEDURE buscar_orden_por_numero(IN nro_orden BIGINT(15))
BEGIN
SELECT impresiones.nro_orden as Orden, clientes.nombre as Cliente, impresiones.atendido_por as 'Atendido por', impresiones.fecha_creacion as Creado, impresiones.estado as Estado, impresiones.tipo_trabajo as Tipo, impresiones.fecha_entrega as Fecha, impresiones.hora_entrega as Hora
FROM clientes
INNER JOIN impresiones
ON clientes.id = impresiones.id_cliente
WHERE impresiones.nro_orden = nro_orden;

SELECT bonos.nro_orden as Orden, clientes.nombre as Cliente, bonos.atendido_por as 'Atendido por', bonos.fecha_creacion as Creado, bonos.estado as Estado, bonos.tipo_trabajo as Tipo, bonos.fecha_entrega as Fecha, bonos.hora_entrega as Hora
FROM clientes
INNER JOIN bonos
ON clientes.id = bonos.id_cliente
WHERE bonos.nro_orden = nro_orden;

SELECT disenos.nro_orden as Orden, clientes.nombre as Cliente, disenos.atendido_por as 'Atendido por', disenos.fecha_creacion as Creado, disenos.estado as Estado, disenos.tipo_trabajo as Tipo, disenos.fecha_entrega as Fecha, disenos.hora_entrega as Hora
FROM clientes
INNER JOIN disenos
ON clientes.id = disenos.id_cliente
WHERE disenos.nro_orden = nro_orden;

SELECT loma.nro_orden as Orden, clientes.nombre as Cliente, loma.atendido_por as 'Atendido por', loma.fecha_creacion as Creado, loma.estado as Estado, loma.tipo_trabajo as Tipo, loma.fecha_entrega as Fecha, loma.hora_entrega as Hora
FROM clientes
INNER JOIN loma
ON clientes.id = loma.id_cliente
WHERE loma.nro_orden = nro_orden;

SELECT plotter.nro_orden as Orden, clientes.nombre as Cliente, plotter.atendido_por as 'Atendido por', plotter.fecha_creacion as Creado, plotter.estado as Estado, plotter.tipo_trabajo as Tipo, plotter.fecha_entrega as Fecha, plotter.hora_entrega as Hora
FROM clientes
INNER JOIN plotter
ON clientes.id = plotter.id_cliente
WHERE plotter.nro_orden = nro_orden;

SELECT remeras.nro_orden as Orden, clientes.nombre as Cliente, remeras.atendido_por as 'Atendido por', remeras.fecha_creacion as Creado, remeras.estado as Estado, remeras.tipo_trabajo as Tipo, remeras.fecha_entrega as Fecha, remeras.hora_entrega as Hora
FROM clientes
INNER JOIN remeras
ON clientes.id = remeras.id_cliente
WHERE remeras.nro_orden = nro_orden;

SELECT sellos.nro_orden as Orden, clientes.nombre as Cliente, sellos.atendido_por as 'Atendido por', sellos.fecha_creacion as Creado, sellos.estado as Estado, sellos.tipo_trabajo as Tipo, sellos.fecha_entrega as Fecha, sellos.hora_entrega as Hora
FROM clientes
INNER JOIN sellos
ON clientes.id = sellos.id_cliente
WHERE sellos.nro_orden = nro_orden;

SELECT talonarios.nro_orden as Orden, clientes.nombre as Cliente, talonarios.atendido_por as 'Atendido por', talonarios.fecha_creacion as Creado, talonarios.estado as Estado, talonarios.tipo_trabajo as Tipo, talonarios.fecha_entrega as Fecha, talonarios.hora_entrega as Hora
FROM clientes
INNER JOIN talonarios
ON clientes.id = talonarios.id_cliente
WHERE talonarios.nro_orden = nro_orden;

SELECT tarjetas.nro_orden as Orden, clientes.nombre as Cliente, tarjetas.atendido_por as 'Atendido por', tarjetas.fecha_creacion as Creado, tarjetas.estado as Estado, tarjetas.tipo_trabajo as Tipo, tarjetas.fecha_entrega as Fecha, tarjetas.hora_entrega as Hora
FROM clientes
INNER JOIN tarjetas
ON clientes.id = tarjetas.id_cliente
WHERE tarjetas.nro_orden = nro_orden;

SELECT varios.nro_orden as Orden, clientes.nombre as Cliente, varios.atendido_por as 'Atendido por', varios.fecha_creacion as Creado, varios.estado as Estado, varios.tipo_trabajo as Tipo, varios.fecha_entrega as Fecha, varios.hora_entrega as Hora
FROM clientes
INNER JOIN varios
ON clientes.id = varios.id_cliente
WHERE varios.nro_orden = nro_orden;

SELECT volantes.nro_orden as Orden, clientes.nombre as Cliente, volantes.atendido_por as 'Atendido por', volantes.fecha_creacion as Creado, volantes.estado as Estado, volantes.tipo_trabajo as Tipo, volantes.fecha_entrega as Fecha, volantes.hora_entrega as Hora
FROM clientes
INNER JOIN volantes
ON clientes.id = volantes.id_cliente
WHERE volantes.nro_orden = nro_orden;
END$$

DELIMITER ;