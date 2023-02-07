CREATE TABLE tarjetas (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden INT NOT NULL,
  atendido_por VARCHAR(50),
  fecha_entrega VARCHAR(10),
  hora_entrega VARCHAR(6),
  muestra VARCHAR(2),
  tipo_trabajo VARCHAR(20) DEFAULT 'tarjetas',
  tipo VARCHAR(12),
  cantidad INT(4),
  papel VARCHAR(11),
  terminacion VARCHAR(9),
  puntas_redondeadas VARCHAR(2),
  observaciones VARCHAR(255),
  total INT(7),
  entrega INT(7),
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO tarjetas (
  id_cliente,
  nro_orden,
  atendido_por,
  fecha_entrega,
  hora_entrega,
  muestra,
  tipo,
  cantidad,
  papel,
  terminacion,
  puntas_redondeadas,
  observaciones,
  total,
  entrega,
  estado
) VALUES
(4, 33, 'Pepo', '25/04/2023', '19:00', 'no', 'Laser 1/0', 100, 'Ilustracion', 'Corte', 'si', '', 2000, 1000, 'pendiente'),
(4, 33, 'Pepo', '25/04/2023', '19:00', 'no', 'Laser 4/0', 200, 'Ilustracion', 'Perforado', 'si', '', 2000, 1000, 'pendiente'),
(4, 33, 'Pepo', '25/04/2023', '19:00', 'no', 'Laser 4/1', 1000, 'Ilustracion', 'Perforado', 'si', '', 2000, 1000, 'pendiente'),
(4, 33, 'Pepo', '25/04/2023', '19:00', 'no', 'Laser 4/4', 2000, 'Ilustracion', 'Perforado', 'si', '', 2000, 1000, 'pendiente'),
(4, 33, 'Pepo', '25/04/2023', '19:00', 'no', '1000 4/1', 100, 'Ilustracion', 'Corte', 'si', '', 2000, 1000, 'realizado'),
(4, 33, 'Pepo', '25/04/2023', '19:00', 'no', '1000 4/4', 200, 'Ilustracion', 'Corte', 'si', '', 2000, 1000, 'realizado'),
(4, 33, 'Pepo', '25/04/2023', '19:00', 'no', 'Opp mate X1', 1000, 'Ilustracion', 'Corte', 'si', '', 2000, 1000, 'pendiente'),
(4, 33, 'Pepo', '25/04/2023', '19:00', 'no', 'Opp mate X2', 2000, 'Ilustracion', 'Corte', 'si', '', 2000, 1000, 'entregado'),
(4, 33, 'Pepo', '25/04/2023', '19:00', 'no', 'Uv sector X1', 100, 'Ilustracion', 'Perforado', 'si', '', 2000, 1000, 'entregado'),
(4, 33, 'Pepo', '25/04/2023', '19:00', 'no', 'Uv sector X2', 200, 'Ilustracion', 'Corte', 'si', '', 2000, 1000, 'pendiente');