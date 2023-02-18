CREATE TABLE disenos (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden BIGINT NOT NULL,
  fecha_creacion VARCHAR(10),
  atendido_por VARCHAR(50),
  fecha_entrega VARCHAR(10),
  hora_entrega VARCHAR(6),
  muestra VARCHAR(2),
  tipo_trabajo VARCHAR(20) DEFAULT 'diseños',
  ubicacion_archivo VARCHAR(100),
  detalles VARCHAR(255),
  observaciones VARCHAR(255),
  total INT(7),
  entrega INT(7),
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO disenos (
  id_cliente,
  nro_orden,
  fecha_creacion,
  atendido_por,
  fecha_entrega,
  hora_entrega,
  muestra,
  ubicacion_archivo,
  detalles,
  observaciones,
  total,
  entrega,
  estado
) VALUES
(2, 23, '30/12/2022', 'Tomy', '11/03/2023', '19:00', 'si', 'whatsap', 'monos verdes', '', 200, 50, 'pendiente'),
(7, 24, '30/12/2022', 'Laura', '11/03/2023', '19:00', 'si', 'whatsap', 'perros naranjas', '', 200, 50, 'realizado'),
(5, 25, '30/12/2022', 'Vane', '11/03/2023', '19:00', 'si', 'whatsap', 'sapos comestibles', '', 200, 50, 'entregado');