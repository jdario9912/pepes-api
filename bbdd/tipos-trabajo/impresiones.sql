CREATE TABLE impresiones (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden INT NOT NULL,
  atendido_por VARCHAR(50),
  fecha_entrega VARCHAR(10),
  hora_entrega VARCHAR(6),
  muestra VARCHAR(2),
  tipo_trabajo VARCHAR(20) DEFAULT 'impresiones',
  ubicacion_archivo VARCHAR (100),
  faz VARCHAR(6),
  tipo_papel VARCHAR(100),
  tamano_papel VARCHAR(6),
  orientacion VARCHAR(10),
  anillado VARCHAR(2),
  abrochado VARCHAR(2),
  corte VARCHAR(2),
  observaciones VARCHAR(255),
  saldo INT(7),
  entrega INT(7),
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO impresiones (
  id_cliente,
  nro_orden,
  atendido_por,
  fecha_entrega,
  hora_entrega,
  muestra,
  ubicacion_archivo,
  faz,
  tipo_papel,
  tamano_papel,
  orientacion,
  anillado,
  abrochado,
  corte,
  observaciones,
  saldo,
  entrega,
  estado
) VALUES 
(1,1,'Jacinto', '01/03/2023', '19:00', 'no', 'pc pepo 5','doble','algun tipo de papel','oficio','vertical','si','si','no','que buen trabajo', 1400, 500, 'pendiente'),
(1,2,'Jacinto', '01/03/2023', '19:00', 'no', 'pc android','simple','otro tipo de papel','A4','vertical','si','si','no','muy groso', 1400, 500, 'pendiente'),
(1,3,'Jacinto', '01/03/2023', '19:00', 'no', 'pc apple','simple','papel re groso','A3','vertical','si','si','no','manso trabajo', 1400, 500, 'entregado'),
(1,4,'Jacinto', '01/03/2023', '19:00', 'no', 'pc lenovo','doble','hipermega papel','A5','vertical','si','si','no','todo super genial', 1400, 500, 'enviar a proveedor'),
(3,5,'Jacinto', '01/03/2023', '19:00', 'no', 'pc maru 4','simple','papel re groso','A3','apaisado','no','si','si','orden para foo fighters', 1400, 500, 'realizado');

INSERT INTO impresiones (
  id_cliente,
  nro_orden,
  ubicacion_archivo,
  faz,
  tipo_papel,
  tamano_papel,
  orientacion,
  anillado,
  abrochado,
  corte,
  observaciones
) VALUES 
(3,5,'pc maru 4','simple','papel re groso','A3','apaisado','no','si','si','orden para foo fighters', 'realizado');