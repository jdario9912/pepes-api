CREATE TABLE loma (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden INT NOT NULL,
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
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO loma (
  id_cliente,
  nro_orden,
  ubicacion_archivo,
  material,
  orientacion,
  bolsillo,
  corte,
  ojales,
  troquelado,
  portabaner,
  observaciones,
  estado
) VALUES 
(7, 6, 'pc 15', 'Vinillo Brillo', 'horizontal', 'no', 'no', 'si', 'si', 'no', 'no tiene', 'pendiente'),
(2, 7, 'pc 1', 'Vinillo Mate', 'vertical', 'arriba', 'si', 'si', 'si', 'no', 'no tiene', 'entregado'),
(3, 8, 'pc 4', 'Papel', 'horizontal', 'no', 'no', 'si', 'si', 'no', 'no tiene', 'enviar a proveedor'),
(7, 9, 'pc pepo', 'Lona Front', 'horizontal', 'no', 'no', 'si', 'si', 'no', 'no tiene', 'realizado'),
(6, 10, 'pc maru', 'Transparente', 'vertical', 'no', 'no', 'si', 'si', 'no', 'no tiene', 'pendiente'),
(6, 11, 'pc principal', 'Lona Back', 'horizontal', 'no', 'no', 'si', 'si', 'no', 'no tiene', 'realizado'),
(8, 12, 'pc 4', 'Micro', 'horizontal', 'no', 'no', 'si', 'si', 'no', 'no tiene', 'pendiente');