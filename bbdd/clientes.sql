CREATE TABLE clientes (
  id INT(4) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50)NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  email VARCHAR(50) DEFAULT NULL,
  observaciones VARCHAR(255),
  PRIMARY KEY (id)
);

INSERT INTO clientes (
  nombre,
  telefono,
  email,
  observaciones
) 
VALUES 
('Jenifer Lopez', '351-568394', 'jeniferlopez@gmail.com', 'pop'),
('Kudai', '351-586294', 'kudai@gmail.com', 'pop-rock'),
('Metallica', '351-336794', 'metallica@gmail.com', 'heavy-metal'),
('Carajo', '351-213365', 'carajo@gmail.com', 'heavy-metal'),
('Arjona', '351-127958', 'arjona@gmail.com', 'lentos');


DELIMITER $$

DELIMITER $$
CREATE PROCEDURE ordenes_pendientes(IN id INT(2))
BEGIN
    SELECT id_cliente, nro_orden, tipo_trabajo, estado FROM remeras WHERE id_cliente = id AND estado = 'pendiente';
    SELECT id_cliente, nro_orden, tipo_trabajo, estado FROM loma WHERE id_cliente = id AND estado = 'pendiente';
END$$

DELIMITER ;

CALL ordenes_pendientes();