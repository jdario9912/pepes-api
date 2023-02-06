CREATE TABLE bonos (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden INT NOT NULL,
  tipo_trabajo VARCHAR(20) DEFAULT 'bonos',
  
  observaciones VARCHAR(255),
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO bonos (
  id_cliente,
  nro_orden,
  
  observaciones,
  estado
) VALUES
()