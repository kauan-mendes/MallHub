CREATE DATABASE Mallhub;
USE Mallhub;

CREATE TABLE usuario (
	id_usuario int AUTO_INCREMENT,
	cnpj varchar(14),
	nome_fantasia varchar(255),
	razao_social varchar(255),
	cep varchar(8),
	cidade varchar(75),
	estado varchar(20),
	logradouro varchar(255),
	numero varchar(10),
	email varchar(255),
	telefone varchar(11),
	senha varchar(255),
    PRIMARY KEY (id_usuario)
);

CREATE TABLE dispositivo (
	id_dispositivo int AUTO_INCREMENT,
	nome varchar(255),
	descricao varchar(255),
	ativo boolean,
	id_usuario int,
	id_localidade int,
	id_tipoSensor int,
	PRIMARY KEY(id_dispositivo)
);

CREATE TABLE evento (
	id_evento int AUTO_INCREMENT,
    nome varchar(255),
	data_hora datetime,
	fluxo_pessoas bigint,
	id_dispositivo int,
    PRIMARY KEY (id_evento)
);

CREATE TABLE tiposensor (
	id_tiposensor int AUTO_INCREMENT,
    nome varchar(255),
	descricao varchar(255),
    PRIMARY KEY(id_tiposensor)
);

CREATE TABLE localidade (
	id_localidade int AUTO_INCREMENT,
	nome varchar(255),
	descricao varchar(255),
	id_setor int,
    PRIMARY KEY(id_localidade)
);

CREATE TABLE setor (
	id_setor int AUTO_INCREMENT,
    nome varchar(255),
    descricao varchar(255),
    PRIMARY KEY(id_setor)
);

CREATE TABLE tiposensor (
	id_tiposensor int AUTO_INCREMENT,
    nome varchar(255),
	descricao varchar(255),
    PRIMARY KEY(id_tiposensor)
);

INSERT INTO tiposensor (nome, descricao) VALUES ("TCRT5000", "sensor para detectar presença");
SELECT * FROM tiposensor;

INSERT INTO usuario (cnpj, nome_fantasia, razao_social, cep, cidade, estado, logradouro, numero, email, telefone, senha) 
VALUES ("23982989000181", "Shopping Aricanduva", "COMERCIAL SHOPPING ARICANDUVA ENTERPRISES", "03527000", "São Paulo", "SP", "Avenida Aricanduva", "5555", "sac@aricanduva.com.br", "08007747071", "10833522"),
	   ("69229147000154","Shopping Eldorado","COMERCIAL SHOPPING ELDORADO","05402600", "São Paulo","SP","Av. Rebouças","3970", "sac@eldourado.com.br", "112197780", "31415926535"),
	   ("53961544000186", "Shopping Anália Franco", "SHOPPING ANÁLIA FRANCO LTDA", "09466000", "São Paulo", "SP", "Avenida Regente Feijó", "1739", "sac@analiafranco.com.br", "114003413", "55897633");
SELECT * FROM usuario;

INSERT INTO dispositivo (nome, descricao, ativo, id_usuario, id_localidade, id_tipoSensor) VALUES ("dispositivo 01", "dispositivo sensor da rua principal", true, 1, 1, 1),
																								  ("dispositivo 02", "dispositivo sensor da segunda rua principal", true, 1, 2, 1),
																								  ("dispositivo 01", "dispositivo sensor da rua principal", true, 2, 3, 1);
SELECT * FROM dispositivo;

INSERT INTO localidade (nome, descricao, id_setor) VALUES ("Rua Santa Efigenia", "Rua localizada na rua principal", 1),
							     ("Rua Santa Efigenia II", "Rua localizada na segunda rua principal", 1),
                                 ("Rua Dom Pedro II", "Rua localizada na rua principal", 2);
SELECT * FROM localidade;

INSERT INTO setor (nome, descricao) VALUES ("A","setor A"),
										   ("B", "setor B"),
                                           ("C", "setor C");
SELECT * FROM setor;

INSERT INTO evento (nome, data_hora, fluxo_pessoas, id_dispositivo) VALUES ("evento", "2022-01-10 13:05:00", 1000, 1),
																		   ("evento", "2022-01-15 14:30:00", 3000, 1),
                                                                           ("evento", "2022-02-03 19:00:00", 5000, 2),
                                                                           ("evento", "2022-02-05 15:30:00", 10000, 3);
SELECT * FROM evento;


SELECT * FROM usuario;
SELECT * FROM dispositivo;
SELECT * FROM tiposensor;
SELECT * FROM evento;
SELECT * FROM setor;
SELECT * FROM localidade;