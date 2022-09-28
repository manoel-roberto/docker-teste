CREATE DATABASE IF NOT EXISTS
  db_teste;
USE db_teste;

CREATE TABLE IF NOT EXISTS products (
  id INT(11) AUTO_INCREMENT,
  name VARCHAR(255),
  price DECIMAL(10, 2),
  PRIMARY KEY (id)
);

INSERT INTO products VALUE(0, 'Arroz', 5);
INSERT INTO products VALUE(0, 'Feijao', 6);