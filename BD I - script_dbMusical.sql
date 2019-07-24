CREATE DATABASE dbMusical; 

USE dbMusical;

ALTER DATABASE dbMusical CHARSET = Latin1 COLLATE = latin1_general_ci;

CREATE TABLE TbBanda
(
  CoBanda TINYINT AUTO_INCREMENT PRIMARY KEY,
  NoBanda VARCHAR(50) NOT NULL,
  VaCache FLOAT
);

CREATE TABLE TbIntegrante
(
  CoIntegrante INT AUTO_INCREMENT PRIMARY KEY,
  NoIntegrante VARCHAR(50) NOT NULL,
  CoBanda TINYINT NOT NULL,
  CONSTRAINT FK_BandaMusico FOREIGN KEY (CoBanda) REFERENCES TbBanda (CoBanda)
);

/*Inclui vários registros simultaneamente em TbBanda*/
INSERT INTO TbBanda(NoBanda, VaCache) 
VALUES ('Jota Quest', 130000),
       ('Skank', 100000),
	   ('Paralamas do Sucesso', 70000),
	   ('Capital Inicial', 150000),
	   ('Roupa Nova', 80000),
	   ('Titãs', NULL);

	   /*Inclui vários registros simultaneamente em TbIntegrantes*/
INSERT INTO TbIntegrante(NoIntegrante, CoBanda) 
VALUES /*Jota Quest*/
       ('Rogério Flausino', 1),
       ('Marco Túlio Lara', 1),
	   ('PJ', 1),
	   ('Paulinho Fonseca', 1),
	   ('Márcio Buzelin', 1),
	   /*Skank*/
	   ('Samuel Rosa', 2),
       ('Henrique Portugal', 2),
	   ('Lelo Zaneti', 2),
	   ('Haroldo Ferretti', 2),
	   /*Paralamas do Sucesso*/
	   ('Herbert Vianna', 3),
       ('Bi Ribeiro', 3),
	   ('João Barone', 3),
	   /*Capital Inicial*/
	   ('Dinho Ouro Preto', 4),
       ('Fê Lemos', 4),
	   ('Flávio Lemos', 4),
	   ('Yves Passarel', 4),
	   /*Roupa Nova*/
	   ('Paulinho', 5),
       ('Serginho Herval', 5),
	   ('Nando', 5),
	   ('Kiko', 5),
	   ('Ricardo Feghali', 5),
	   ('Cleberson Horsth', 5);