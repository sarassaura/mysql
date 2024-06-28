CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(255),
    preco DECIMAL(10,2),
    descricao VARCHAR(255),
    categoria INT,
    validade DATE
);

INSERT INTO tb_produtos (nome, preco, descricao, categoria, validade)
VALUES
    ('Camiseta', 29.99, 'Camiseta de algodão', 1, '2024-12-31'),
    ('Calça Jeans', 59.90, 'Calça jeans slim fit', 1, '2024-12-31'),
    ('Tênis esportivo', 99.99, 'Tênis para corrida', 2, '2024-12-31'),
    ('Relógio de pulso', 199.50, 'Relógio analógico resistente à água', 3, '2025-06-30'),
    ('Cadeira de escritório', 299.00, 'Cadeira ergonômica com apoio lombar', 4, '2024-12-31'),
    ('Smartphone', 1499.99, 'Smartphone com câmera de alta resolução', 5, '2024-12-31'),
    ('Tablet', 899.90, 'Tablet com tela retina', 5, '2024-12-31'),
    ('Livro', 39.99, 'Livro de ficção científica', 6, '2024-12-31');
    
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco=1000.99 WHERE id=8;