CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
  id BIGINT AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome)
VALUES ("Medicamentos"), ("Cosméticos"), ("Higiene"), ("Suplementos"), ("Alimentos");
CREATE TABLE tb_produtos (
  id BIGINT AUTO_INCREMENT,
  nome VARCHAR(100),
  valor DECIMAL(10, 2),
  categoria_id BIGINT,
  PRIMARY KEY (id),
  FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos (nome, valor, categoria_id)
VALUES ("Dipirona", 10.00, 1),
       ("Creme facil", 15.00, 2),
       ("Vitamina B6", 30.00, 4),
       ("Cotonete", 50.00, 2);


SELECT * FROM tb_produtos WHERE valor > 50.00;
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.*, c.nome AS categoria_nome
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id;

SELECT p.*, c.nome AS categoria_nome
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.categoria_id = c.id
WHERE c.nome = 'Cosméticos';