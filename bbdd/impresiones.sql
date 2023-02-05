CREATE TABLE impresiones (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden INT NOT NULL,
  ubicacion_archivo VARCHAR (100),
  faz VARCHAR(6),
  tipo_papel VARCHAR(100),
  tamano_papel VARCHAR(6),
  orientacion VARCHAR(8),
  anillado VARCHAR(2),
  abrochado VARCHAR(2),
  corte VARCHAR(2),
  observaciones VARCHAR(255),
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
  observaciones
) VALUES 
(1,1,'pc pepo 5','doble','algun tipo de papel','A4','vertical','si','si','no','que buen trabajo')
(1,2,'pc pepo 5','doble','algun tipo de papel','A4','vertical','si','si','no','que buen trabajo')
(1,3,'pc pepo 5','doble','algun tipo de papel','A4','vertical','si','si','no','que buen trabajo')
(1,4,'pc pepo 5','doble','algun tipo de papel','A4','vertical','si','si','no','que buen trabajo')
;

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
(3,5,'pc maru 4','simple','papel re groso','A3','apaisado','no','si','si','orden para foo fighters');