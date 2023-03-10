CREATE TABLE loma (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden BIGINT NOT NULL,
  fecha_creacion VARCHAR(10),
  atendido_por VARCHAR(50),
  fecha_entrega VARCHAR(10),
  hora_entrega VARCHAR(6),
  muestra VARCHAR(2),
  tipo_trabajo VARCHAR(20) DEFAULT 'loma',
  ubicacion_archivo VARCHAR (100),
  material VARCHAR(14),
  orientacion VARCHAR(10),
  bolsillo VARCHAR(15),
  corte VARCHAR(2), 
  ojales VARCHAR(2),
  troquelado VARCHAR(2),
  portabaner VARCHAR(2),
  observaciones VARCHAR(255),
  total INT(7),
  entrega INT(7),
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO loma (
  id_cliente,
  nro_orden,
  fecha_creacion,
  atendido_por,
  fecha_entrega,
  hora_entrega,
  muestra,
  ubicacion_archivo,
  material,
  orientacion,
  bolsillo,
  corte,
  ojales,
  troquelado,
  portabaner,
  observaciones,
  total,
  entrega,
  estado
) VALUES 
(7, 6, '02/01/2023', 'Maru', '08/02/2023', '19:00', 'no', 'pc 15', 'Vinillo Brillo', 'horizontal', 'no', 'no', 'si', 'si', 'no', 'no tiene', 3000, 1300, 'pendiente'),
(2, 7, '02/01/2023', 'Maru', '08/02/2023', '19:00', 'no', 'pc 1', 'Vinillo Mate', 'vertical', 'arriba', 'si', 'si', 'si', 'no', 'no tiene', 3000, 1300, 'entregado'),
(3, 8, '02/01/2023', 'Maru', '08/02/2023', '19:00', 'no', 'pc 4', 'Papel', 'horizontal', 'no', 'no', 'si', 'si', 'no', 'no tiene', 3000, 1300, 'enviar a proveedor'),
(7, 9, '02/01/2023', 'Maru', '08/02/2023', '19:00', 'no', 'pc pepo', 'Lona Front', 'horizontal', 'no', 'no', 'si', 'si', 'no', 'no tiene', 3000, 1300, 'realizado'),
(6, 10, '02/01/2023', 'Maru', '08/02/2023', '19:00', 'no', 'pc maru', 'Transparente', 'vertical', 'no', 'no', 'si', 'si', 'no', 'no tiene', 3000, 1300, 'pendiente'),
(6, 11, '02/01/2023', 'Maru', '08/02/2023', '19:00', 'no', 'pc principal', 'Lona Back', 'horizontal', 'no', 'no', 'si', 'si', 'no', 'no tiene', 3000, 1300, 'realizado'),
(8, 12, '02/01/2023', 'Maru', '08/02/2023', '19:00', 'no', 'pc 4', 'Micro', 'horizontal', 'no', 'no', 'si', 'si', 'no', 'no tiene', 3000, 1300, 'pendiente');