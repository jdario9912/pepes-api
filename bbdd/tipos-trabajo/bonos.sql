CREATE TABLE bonos (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden INT NOT NULL,
  atendido_por VARCHAR(50),
  fecha_entrega VARCHAR(10),
  hora_entrega VARCHAR(6),
  muestra VARCHAR(2),
  tipo_trabajo VARCHAR(20) DEFAULT 'bonos',
  tipo VARCHAR(11),
  tamano VARCHAR(3),
  desde_numero INT(7),
  cantidad INT(6),
  numeradores INT(1),
  lotes INT(3),
  observaciones VARCHAR(255),
  total INT(7),
  entrega INT(7),
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO bonos (
  id_cliente,
  nro_orden,
  atendido_por,
  fecha_entrega,
  hora_entrega,
  muestra,
  tipo,
  tamano,
  desde_numero,
  cantidad,
  numeradores,
  lotes,
  observaciones,
  total,
  entrega,
  estado
) VALUES
(1, 19, 'Lolo', '07/02/2023', '19:00', 'si', 'Obra', '1/3', 1, 7, 1, 10, 'gran bono', 540, 200, 'pendiente'),
(1, 20, 'Lolo', '07/02/2023', '19:00', 'si', 'Obra', '1/3', 1, 7, 1, 10, 'gran bono', 540, 200, 'entregado'),
(1, 21, 'Lolo', '07/02/2023', '19:00', 'si', 'Obra', '1/3', 1, 7, 1, 10, 'gran bono', 540, 200, 'realizado'),
(1, 22, 'Lolo', '07/02/2023', '19:00', 'si', 'Obra', '1/3', 1, 7, 1, 10, 'gran bono', 540, 200, 'pendiente');