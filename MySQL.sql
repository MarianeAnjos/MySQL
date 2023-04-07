CREATE DATABASE db_recursoshumanos;
CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255),
     idade INT(2),
    salario DECIMAL(8,2),
    cargo VARCHAR(255),
	PRIMARY KEY(id)
);
INSERT INTO tb_colaboradores(nome,idade,salario,cargo) 
VALUES("Leona",04, 700.99,"Cão de apoio emocional");
INSERT INTO tb_colaboradores(nome,idade,salario,cargo)
VALUES("Mariane",25,875.49,"Desenvolvedora Java");

SELECT * FROM tb_colaboradores;
SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores
SET salario = 999.99
WHERE id=1;