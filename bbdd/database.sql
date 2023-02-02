CREATE DATABASE IF NOT EXISTS pepesdb;

CREATE TABLE empleados (
  id INT(3) NOT NULL AUTO_INCREMENT,
  nickname VARCHAR(45) NOT NULL,
  email VARCHAR(50) DEFAULT NULL,
  password VARCHAR(30) NOT NULL,
  permisions VARCHAR(7) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO empleados 
  (nickname, email, password, permisions) 
VALUES 
  ('pepo', 'pepo@gmail.com', 'admin', 'admin'),
  ('maru', 'maru@gmail.com', 'user', 'user'),
  ('joel', 'joel@gmail.com', 'user', 'user'),
  ('eli', 'eli@gmail.com', 'user', 'user')
;

CREATE TABLE clientes (
  id INT(4) NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50)NOT NULL,
  telefono VARCHAR(20) NOT NULL,
  email VARCHAR(50) DEFAULT NULL,
  observaciones VARCHAR(255),
  PRIMARY KEY (id)
);

INSERT INTO clientes (
  nombre,
  telefono,
  email,
  observaciones
) 
VALUES (
  'Foo Fighters',
  '351-396817',
  'foofighters@gmail.com',
  'hard-rock'
);

SELECT *
FROM clientes
WHERE nombre LIKE '%nombre%';