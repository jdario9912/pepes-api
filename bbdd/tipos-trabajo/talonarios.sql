CREATE TABLE talonarios (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden INT NOT NULL,
  tipo_trabajo VARCHAR(20) DEFAULT 'talonarios',
  tipo VARCHAR(14),
  cantidad INT(5),
  tamano VARCHAR(3),
  modelo_anterior VARCHAR(2),
  tiene_logo VARCHAR(2),
  ubicacion_logo VARCHAR(100),
  numero_desde INT(10),
  puntillado_emblocado VARCHAR(9),
  color_duplicado VARCHAR(8),
  triplicado VARCHAR(2),
  color_triplicado VARCHAR(8),
  observaciones VARCHAR(255),
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO talonarios (
  id_cliente,
  nro_orden,
  tipo,
  cantidad,
  tamano,
  modelo_anterior,
  tiene_logo,
  ubicacion_logo,
  numero_desde,
  puntillado_emblocado,
  color_duplicado,
  triplicado,
  color_triplicado,
  observaciones,
  estado
) VALUES
(3, 13, 'Factura C', 3, 'A4', 'si', 'si', 'pc 4', '4350', 'simple', 'amarillo', 'no', '', 'super talonario', 'enviar a proveedor'),
(3, 14, 'Recibo C', 3, '1/2', 'si', 'si', 'pc 4', '356', 'doble', 'rosa', 'no', '', 'super talonario', 'realizado'),
(7, 15, 'Factura C', 3, 'A4', 'si', 'si', 'pc 4', '4350', 'sueltas', 'verde', 'no', '', 'super talonario', 'realizado'),
(8, 16, 'Factura C', 3, 'A4', 'si', 'si', 'pc 4', '4350', 'emblocado', 'celeste', 'no', '', 'super talonario', 'realizado'),
(1, 17, 'Factura C', 3, 'A4', 'si', 'si', 'pc 4', '4350', 'simple', 'amarillo', 'no', '', 'super talonario', 'realizado'),
(6, 18, 'Factura C', 3, 'A4', 'si', 'si', 'pc 4', '4350', 'doble', 'rosa', 'no', '', 'super talonario', 'realizado');