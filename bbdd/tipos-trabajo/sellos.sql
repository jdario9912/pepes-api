CREATE TABLE sellos (
  id INT NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden BIGINT NOT NULL,
  fecha_creacion VARCHAR(10),
  atendido_por VARCHAR(50),
  fecha_entrega VARCHAR(10),
  hora_entrega VARCHAR(6),
  muestra VARCHAR(2),
  tipo_trabajo VARCHAR(20) DEFAULT 'sellos',
  tipo VARCHAR(10),
  tamano VARCHAR(100),
  texto VARCHAR(100),
  dibujo VARCHAR(100),
  observaciones VARCHAR(255),
  total INT(7),
  entrega INT(7),
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO sellos (
  id_cliente,
  nro_orden,
  fecha_creacion,
  atendido_por,
  fecha_entrega,
  hora_entrega,
  muestra,
  tipo,
  tamano,
  texto,
  dibujo,  
  observaciones,
  total,
  entrega,
  estado
) VALUES
(1, 48, '06/10/2023', 'Joel', '13/04/2023', '19:00', 'si', 'Madera', 'Grande', 'Ingeniero Salas', 'Maquina', '', 550, 200, 'pendiente'),
(2, 49, '06/10/2023', 'Joel', '08/04/2023', '19:00', 'si', 'Automatico', 'Mediano', 'Ingeniero Salas', 'Maquina', '', 550, 200, 'realizado'),
(3, 50, '06/10/2023', 'Joel', '03/03/2023', '19:00', 'si', 'Pocket', 'Chico', 'Ingeniero Salas', 'Maquina', '', 550, 200, 'entregado'),
(4, 51, '06/10/2023', 'Joel', '22/03/2023', '19:00', 'si', 'Otro', 'Grande', 'Ingeniero Salas', 'Maquina', '', 550, 200, 'pendiente');