CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
tipo VARCHAR(255) NOT NULL,
validade DATE NULL,
preco DECIMAL(8,2),
categorias_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (descricao)
VALUE("Medicamentos");

INSERT INTO tb_categorias (descricao)
VALUE("Higiene");

INSERT INTO tb_categorias (descricao)
VALUE("Higiene infantil");

INSERT INTO tb_categorias (descricao)
VALUE("Ortopedia");

INSERT INTO tb_categorias (descricao)
VALUE("Suplemento Alimentar");

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos(nome, quantidade,tipo, validade, preco, categorias_id) VALUES ("Anaugesicos",120,"Dor e febre","2022-05-09",99.05,1);

INSERT INTO tb_produtos(nome, quantidade,tipo, validade, preco, categorias_id) VALUES ("Fitoterápicos",80,"2023-05-20",79.99,1);

INSERT INTO tb_produtos(nome, quantidade, tipo, validade, preco, categorias_id) VALUES ("Lenços umidecidos",12,"Limpeza","2025-09-09",12.00,2);

INSERT INTO tb_produtos(nome, quantidade, tipo, validade, preco, categorias_id) VALUES ("Shampoo bebe",14,"Banho","2027-08-07",5.00,2);

INSERT INTO tb_produtos(nome, quantidade, tipo, validade, preco, categorias_id) VALUES ("Escovas de cabelo",7,"Higiene bucal","2021-11-09",22.00,3);

INSERT INTO tb_produtos(nome, quantidade,tipo, validade, preco, categorias_id) VALUES ("Bengala",5,"Ortopedico","2025-11-25",100.00,4);

INSERT INTO tb_produtos(nome, quantidade,tipo, validade, preco, categorias_id) VALUES ("Joelheira",2,"Ortopedico","2025-01-01",60.00,4);

INSERT INTO tb_produtos(nome, quantidade,tipo, validade, preco, categorias_id) VALUES ("Vitamina B",120,"Reposição","2028-05-29",150.05,5);

SELECT * FROM tb_produtos WHERE preco > 50.00;
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categorias_id = tb_categorias.id;