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