CREATE TABLE varios (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden BIGINT NOT NULL,
  fecha_creacion VARCHAR (10),
  atendido_por VARCHAR(50),
  fecha_entrega VARCHAR(10),
  hora_entrega VARCHAR(6),
  muestra VARCHAR(2),
  tipo_trabajo VARCHAR(20) DEFAULT 'varios',
  detalle VARCHAR(255),
  observaciones VARCHAR(255),
  total INT(7),
  entrega INT(7),
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO varios (
  id_cliente,
  nro_orden,
  fecha_creacion,
  atendido_por,
  fecha_entrega,
  hora_entrega,
  muestra,
  detalle,
  observaciones,
  total,
  entrega,
  estado
) VALUES
(3, 52, '09/01/2023', 'Jacinto', '13/04/2023', '19:00', 'si', 'Fotocopias color', '', 200, 200, 'pendiente'),
(4, 53, '09/01/2023', 'Jacinto', '13/04/2023', '19:00', 'si', 'Fotocopias color', '', 200, 200, 'entregado');