CREATE TABLE remeras (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden INT NOT NULL,
  atendido_por VARCHAR(50),
  fecha_entrega VARCHAR(10),
  hora_entrega VARCHAR(6),
  muestra VARCHAR(2),
  tipo_trabajo VARCHAR(20) DEFAULT 'remeras',
  ubicacion_archivo VARCHAR(100),
  talles VARCHAR(100),
  color VARCHAR(100),
  estampa_pecho VARCHAR(100),
  estampa_esplada VARCHAR(100),
  color_estampa VARCHAR(50),
  cantidad INT(4),
  observaciones VARCHAR(255),
  total INT(7),
  entrega INT(7),
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO remeras (
  id_cliente,
  nro_orden,
  atendido_por,
  fecha_entrega,
  hora_entrega,
  muestra,
  ubicacion_archivo,
  talles,
  color,
  estampa_pecho,
  estampa_esplada,
  color_estampa,
  cantidad,
  observaciones,
  total,
  entrega,
  estado
) VALUES
(1,30, 'Maru', '16/03/2023', '19:00', 'si', 'whatsapp', 'S, M y XL', 'Blanco', 'Batman', 'Robin', 'Negro', 20, 'al cuerpo', 12000, 3000, 'pendiente'),
(2,31, 'Maru', '06/03/2023', '19:00', 'si', 'whatsapp', 'S, M y XL', 'Blanco', 'Batman', 'Robin', 'Negro', 20, 'sueltas', 12000, 3000, 'pendiente'),
(3,32, 'Maru', '02/03/2023', '19:00', 'si', 'pc 3', 'M y XL', 'Blanco', 'Batman', 'Robin', 'Negro', 20, 'comun', 12000, 3000, 'enviar a proveedor');