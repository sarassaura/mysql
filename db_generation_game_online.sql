CREATE DATABASE db_generation_game_online;
USE  db_generation_game_online;

CREATE TABLE tb_classes (
	id_classe BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe VARCHAR(255),
    forca DECIMAL(10,2),
    magia DECIMAL(10,2)
);

CREATE TABLE tb_personagens (
	id_personagem BIGINT AUTO_INCREMENT PRIMARY KEY,
    classe_id BIGINT,
    nome VARCHAR(255),
    vida DECIMAL(10,2),
    mana DECIMAL(10,2),
    xp INT,
    ataque INT,
    defesa INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes (id_classe)
);

INSERT INTO tb_classes (classe, forca, magia) VALUES
('Guerreiro', 8.5, 2.3),
('Mago', 6.7, 4.5),
('Clérigo', 9.1, 1.8),
('Ladino', 5.4, 3.2),
('Bárbaro', 7.8, 2.9);

INSERT INTO tb_personagens (classe_id, nome, vida, mana, xp, ataque, defesa) VALUES
(1, 'Aragorn', 100.00, 50.00, 5000, 2500, 2500),
(2, 'Gandalf', 80.00, 100.00, 8000, 2000, 2000),
(3, 'Frodoc', 60.00, 40.00, 3000, 8000, 1000),
(5, 'Legolas', 90.00, 60.00, 6000, 2500, 2000),
(4, 'Gollum', 40.00, 80.00, 2000, 20000, 500),
(2, 'Saruman', 75.00, 90.00, 7000, 2200, 1800),
(5, 'Gimli', 95.00, 30.00, 5500, 1000, 2200),
(3, 'Sam', 70.00, 50.00, 4000, 1800, 1500);

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa IN(1000, 2000);
SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT id_personagem, nome, vida, mana, xp, ataque, defesa, tb_classes.classe, tb_classes.magia, tb_classes.forca
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id_classe;

SELECT id_personagem, nome, vida, mana, xp, ataque, defesa, tb_classes.classe, tb_classes.magia, tb_classes.forca
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id_classe
WHERE tb_classes.classe = 'Mago';