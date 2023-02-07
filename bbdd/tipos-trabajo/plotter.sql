CREATE TABLE plotter (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden INT NOT NULL,
  atendido_por VARCHAR(50),
  fecha_entrega VARCHAR(10),
  hora_entrega VARCHAR(6),
  muestra VARCHAR(2),
  tipo_trabajo VARCHAR(20) DEFAULT 'plotter',
  ubicacion_archivo VARCHAR(100),
  tamano VARCHAR(100),
  color INT(4),
  material VARCHAR(17),
  terminacion VARCHAR(9),
  observaciones VARCHAR(255),
  total INT(7),
  entrega INT(7),
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO plotter (
  id_cliente,
  nro_orden,
  atendido_por,
  fecha_entrega,
  hora_entrega,
  muestra,
  ubicacion_archivo,
  tamano,
  color,
  material,
  terminacion,
  observaciones,
  total,
  entrega,
  estado
) VALUES
(1, 26, 'Pepo', '09/02/23', '19:00', 'no', 'email', 'grande', 6097, 'autoadhesivo', 'pelado', 'pegajoso', 1000, 700, 'terminado'),
(3, 27, 'Pepo', '09/02/23', '19:00', 'no', 'whatsapp', 'pequeño', 6097, 'termotransferible', 'pelado', 'luminoso', 1000, 700, 'entregado'),
(1, 28, 'Pepo', '09/02/23', '19:00', 'no', 'pc 5', 'mediano', 6097, 'autoadhesivo', 'sin pelar', 'baboso', 1000, 700, 'pendiente'),
(8, 29, 'Pepo', '09/02/23', '19:00', 'si', 'email', 'chico', 6097, 'termotransferible', 'pelado', 'espinoso', 1000, 700, 'pendiente');