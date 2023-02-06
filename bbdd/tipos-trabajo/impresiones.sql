CREATE TABLE impresiones (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden INT NOT NULL,
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
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

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
  observaciones,
  estado
) VALUES 
(1,1,'pc pepo 5','doble','algun tipo de papel','oficio','vertical','si','si','no','que buen trabajo', 'pendiente'),
(1,2,'pc android','simple','otro tipo de papel','A4','vertical','si','si','no','muy groso', 'pendiente'),
(1,3,'pc apple','simple','papel re groso','A3','vertical','si','si','no','manso trabajo', 'entregado'),
(1,4,'pc lenovo','doble','hipermega papel','A5','vertical','si','si','no','todo super genial', 'enviar a proveedor'),
(3,5,'pc maru 4','simple','papel re groso','A3','apaisado','no','si','si','orden para foo fighters', 'realizado');

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