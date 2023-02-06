CREATE TABLE nombre (
  id INT(4) NOT NULL AUTO_INCREMENT,
  id_cliente INT NOT NULL,
  nro_orden INT NOT NULL,
  atendido_por VARCHAR(50),
  fecha_entrega VARCHAR(10),
  hora_entrega VARCHAR(6),
  muestra VARCHAR(2),
  tipo_trabajo VARCHAR(20) DEFAULT 'nombre',
  
  observaciones VARCHAR(255),
  saldo INT(7),
  entrega INT(7),
  estado VARCHAR(20),
  PRIMARY KEY (id),
  FOREIGN KEY(id_cliente) REFERENCES clientes(id)
  ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO nombre (
  id_cliente,
  nro_orden,
  atendido_por,
  fecha_entrega,
  hora_entrega,
  muestra,
  
  observaciones,
  saldo,
  entrega,
  estado
) VALUES
()