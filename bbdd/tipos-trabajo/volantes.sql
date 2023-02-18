CREATE TABLE volantes (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden BIGINT NOT NULL,
  fecha_creacion VARCHAR(10),
  atendido_por VARCHAR(50),
  fecha_entrega VARCHAR(10),
  hora_entrega VARCHAR(6),
  muestra VARCHAR(2),
  tipo_trabajo VARCHAR(20) DEFAULT 'volantes',
  tipo VARCHAR(16),
  tamano VARCHAR(4),
  cantidad INT(4),
  impresion VARCHAR(14),
  ubicacion_diseno VARCHAR(100),
  observaciones VARCHAR(255),
  total INT(7),
  entrega INT(7),
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO volantes (
  id_cliente,
  nro_orden,
  fecha_creacion,
  atendido_por,
  fecha_entrega,
  hora_entrega,
  muestra,
  tipo,
  tamano,
  cantidad,
  impresion,
  ubicacion_diseno,
  observaciones,
  total,
  entrega,
  estado
) VALUES
(5, 43, '10/01/2023', 'Joel', '13/04/2023', '19:00', 'si', 'Escala de grises', '1/4', 250, 'Frente y dorso', 'pc 2', '', 1450, 400, 'pendiente'),
(6, 44, '10/01/2023', 'Joel', '13/04/2023', '19:00', 'si', 'Color', '1/2', 500, 'Frente', 'pc 2', '', 1450, 400, 'pendiente'),
(7, 45, '10/01/2023', 'Joel', '13/04/2023', '19:00', 'si', 'Color', '1/8', 1000, 'Frente', 'pc 2', '', 1450, 400, 'enviar a proveedor'),
(8, 46, '10/01/2023', 'Joel', '13/04/2023', '19:00', 'si', 'Color', 'otro', 2000, 'Frente', 'pc 2', '', 1450, 400, 'realizado'),
(5, 47, '10/01/2023', 'Joel', '13/04/2023', '19:00', 'si', 'Escala de grises', '1/4', 5000, 'Frente y dorso', 'pc 2', '', 1450, 400, 'entregado');