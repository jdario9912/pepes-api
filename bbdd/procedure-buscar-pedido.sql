-- ESTE PROCEDURE BUSCA UNA ORDEN SEGUN NUMERO DE ORDEN Y TABLADELIMITER $$

DELIMITER $$
CREATE PROCEDURE buscar_pedido(IN nro_orden BIGINT(15))
BEGIN
SELECT 
impresiones.*,
clientes.nombre,
clientes.telefono,
clientes.email
FROM clientes
INNER JOIN impresiones
ON clientes.id = impresiones.id_cliente
WHERE impresiones.nro_orden = nro_orden;

SELECT 
loma.*,
clientes.nombre,
clientes.telefono,
clientes.email
FROM clientes
INNER JOIN loma
ON clientes.id = loma.id_cliente
WHERE loma.nro_orden = nro_orden;

SELECT 
talonarios.*,
clientes.nombre,
clientes.telefono,
clientes.email
FROM clientes
INNER JOIN talonarios
ON clientes.id = talonarios.id_cliente
WHERE talonarios.nro_orden = nro_orden;

SELECT 
bonos.*,
clientes.nombre,
clientes.telefono,
clientes.email
FROM clientes
INNER JOIN bonos
ON clientes.id = bonos.id_cliente
WHERE bonos.nro_orden = nro_orden;

SELECT 
disenos.*,
clientes.nombre,
clientes.telefono,
clientes.email
FROM clientes
INNER JOIN disenos
ON clientes.id = disenos.id_cliente
WHERE disenos.nro_orden = nro_orden;

SELECT 
plotter.*,
clientes.nombre,
clientes.telefono,
clientes.email
FROM clientes
INNER JOIN plotter
ON clientes.id = plotter.id_cliente
WHERE plotter.nro_orden = nro_orden;

SELECT 
remeras.*,
clientes.nombre,
clientes.telefono,
clientes.email
FROM clientes
INNER JOIN remeras
ON clientes.id = remeras.id_cliente
WHERE remeras.nro_orden = nro_orden;

SELECT 
tarjetas.*,
clientes.nombre,
clientes.telefono,
clientes.email
FROM clientes
INNER JOIN tarjetas
ON clientes.id = tarjetas.id_cliente
WHERE tarjetas.nro_orden = nro_orden;

SELECT 
volantes.*,
clientes.nombre,
clientes.telefono,
clientes.email
FROM clientes
INNER JOIN volantes
ON clientes.id = volantes.id_cliente
WHERE volantes.nro_orden = nro_orden;

SELECT 
sellos.*,
clientes.nombre,
clientes.telefono,
clientes.email
FROM clientes
INNER JOIN sellos
ON clientes.id = sellos.id_cliente
WHERE sellos.nro_orden = nro_orden;

SELECT 
varios.*,
clientes.nombre,
clientes.telefono,
clientes.email
FROM clientes
INNER JOIN varios
ON clientes.id = varios.id_cliente
WHERE varios.nro_orden = nro_orden;
END$$