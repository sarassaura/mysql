CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes(
	matricula BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nota DECIMAL(10,2),
    materia VARCHAR(255) NOT NULL,
    data_nascimento DATE,
    telefone INT
);

INSERT INTO tb_estudantes (nome, nota, materia, data_nascimento, telefone) 
VALUES 
('João Silva', 8.5, 'Matemática', '2000-05-15', 123456789),
('Maria Souza', 7.8, 'Português', '1999-11-28', 987654321),
('Pedro Oliveira', 9.2, 'História', '2001-03-10', 555444333),
('Ana Santos', 6.9, 'Geografia', '2000-07-20', 111222333),
('Carlos Pereira', 8.0, 'Física', '1998-09-05', 999888777),
('Mariana Costa', 7.5, 'Biologia', '2000-01-02', 333222111),
('Lucas Fernandes', 8.7, 'Química', '1999-04-25', 777666555),
('Juliana Rocha', 7.1, 'Inglês', '2000-08-12', 444555666);

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota=10.0 WHERE matricula=8;