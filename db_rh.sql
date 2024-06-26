CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    genero VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    datainicio DATE NOT NULL
);

INSERT INTO tb_colaboradores(nome, genero, cargo, salario, datainicio)
VALUES ("Sarah Nakada", "Mulher Trans", "Desempregada", 100.00, "2024-06-26"),
("Ruth Rojas", "Mulher Cis", "Desempregada", 1000.00, "2024-06-26"),
("Vinicius Pereira", "Homem Cis", "Desempregado", 10000.00, "2024-06-26"),
("Caroline Rinaldo", "Mulher Cis", "Desempregada", 100000.00, "2024-06-26"),
("João Esposíto", "Homem Cis", "Desempregado", 1000000.00, "2024-06-26"),
("Júlio França", "Homem Cis", "Desempregado", 2000000.00, "2024-06-26"),
("Gustavo Silva", "Homem Cis", "Desempregado", 99999999.99, "2024-06-26");

SELECT * from tb_colaboradores WHERE salario > 2000;
SELECT * from tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario=99999999.99 WHERE Id = 2;