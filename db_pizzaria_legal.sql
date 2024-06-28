CREATE DATABASE db_pizzaria_legal;
USE  db_pizzaria_legal;

CREATE TABLE tb_categorias (
	id_categoria BIGINT AUTO_INCREMENT PRIMARY KEY,
	dieta VARCHAR(255),
    sabor VARCHAR(255)
);

CREATE TABLE tb_pizzas (
	id_pizza BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria_id BIGINT,
    tamanho VARCHAR(255),
    preco DECIMAL(10,2),
    nome VARCHAR(255),
    borda VARCHAR(255),
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id_categoria)
);

INSERT INTO tb_categorias (dieta, sabor) VALUES ('onívoro', 'salgada');
INSERT INTO tb_categorias (dieta, sabor) VALUES ('vegetariano', 'salgada');
INSERT INTO tb_categorias (dieta, sabor) VALUES ('vegano', 'salgada');
INSERT INTO tb_categorias (dieta, sabor) VALUES ('vegetariano', 'doce');
INSERT INTO tb_categorias (dieta, sabor) VALUES ('vegano', 'doce');

INSERT INTO tb_pizzas (categoria_id, tamanho, preco, nome, borda) VALUES 
(1, 'Grande', 100.99, 'Pepperoni, queijo mozzarella, pimentão', 'Tradicional'),
(2, 'Média', 18.50, 'Cogumelos, pimentão, cebola, queijo mozzarella', 'Pan'),
(3, 'Grande', 100.00, 'Espinafre, tomate cereja, queijo feta, azeitonas pretas', 'Tradicional'),
(4, 'Pequena', 15.99, 'Queijo mozzarella, tomate fresco, manjericão', 'Tradicional'),
(5, 'Média', 20.00, 'Frango desfiado, milho verde, queijo cheddar', 'Recheada com catupiry'),
(2, 'Grande', 24.50, 'Calabresa, cebola, queijo mozzarella', 'Pan'),
(1, 'Média', 19.75, 'Presunto, champignon, queijo mozzarella', 'Tradicional'),
(3, 'Grande', 50.00, 'Pesto de manjericão, queijo mozzarella, tomate seco, rúcula', 'Tradicional');

SELECT * FROM tb_pizzas WHERE preco > 45.50;
SELECT * FROM tb_pizzas WHERE preco IN(50, 100);
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

SELECT id_pizza, nome, tamanho, preco, borda, tb_categorias.dieta, tb_categorias.sabor
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id_categoria;

SELECT id_pizza, nome, tamanho, preco, borda, tb_categorias.dieta, tb_categorias.sabor
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id_categoria
WHERE tb_categorias.sabor = 'doce';