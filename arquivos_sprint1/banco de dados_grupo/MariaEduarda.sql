CREATE DATABASE Mallhub;
USE Mallhub;

CREATE TABLE usuario (
	id int AUTO_INCREMENT,
    cnpj char(14),
    nome_fantasia varchar(100),
    razao_social varchar(100),
    cep char(8),
    cidade varchar(50),
    estado varchar(50),
    logradouro varchar(50),
    numero char(10),
    email varchar(100),
	telefone varchar(9),
    senha varchar(100),
    PRIMARY KEY(id)
);

INSERT INTO usuario (cnpj, nome_fantasia, razao_social, cep, cidade, estado, logradouro, numero, email, telefone, senha) VALUES ("603839080001", "CENTER LESTE", "SHOPPING CENTER LESTE COMERCIAL LIMITADA", "03526000", "São Paulo", "sp", "Av. Aricanduva", "5555", "contato@Aricanduva.com", "119999999", "123456789");
INSERT INTO usuario (cnpj, nome_fantasia, razao_social, cep, cidade, estado, logradouro, numero, email, telefone, senha) VALUES ("56563158000124","","INTERLAGOS SHOPPING CENTER COMERCIAL LIMITADA","01310100","São Paulo","sp","Avenida Paulista","1000","savoyleao@uol.com.br", "113266352", "123456789");
INSERT INTO usuario (cnpj, nome_fantasia, razao_social, cep, cidade, estado, logradouro, numero, email, telefone, senha) VALUES ("21448736000105", "", "CONSORCIO SHOPPING CENTER JK IGUATEMI", "04543011", "São Paulo", "sp", "Avenida Presidente Juscelino Kubitschek", "2041", "crsouza@iguatemi.com.br", "113137687", "123456789");

CREATE TABLE sensor (
	id int AUTO_INCREMENT,
    id_usuario int,
    nome varchar(50),
    descricao varchar(300),
    localidade varchar(100),
    PRIMARY KEY(id) 
);

INSERT INTO sensor (id_usuario, nome, descricao, localidade) values (1, "Entrada 01", "Sensor localizado na entrada 01 - ao leste do shopping", "Ala norte, entrada 01"),
																	(1, "Entrada 02", "Sensor localizado na entrada 02 - ao leste do shopping", "Ala norte, entrada 02");

INSERT INTO sensor (id_usuario, nome, descricao, localidade) values (2, "Entrada 01", "Sensor localizado na entrada 01 - ao norte do shopping", "Ala norte, entrada 01"),
																	(2, "Entrada 02", "Sensor localizado na entrada 02 - ao norte do shopping", "Ala norte, entrada 02");
                                                                    
INSERT INTO sensor (id_usuario, nome, descricao, localidade) values (3, "Entrada 01", "Sensor localizado na entrada 01 - ao leste do shopping", "Ala leste, entrada 01"),
																	(3, "Entrada 02", "Sensor localizado na entrada 02 - ao leste do shopping", "Ala leste, entrada 02");

CREATE TABLE registro (
	id int AUTO_INCREMENT,
    data_hora datetime,
	fluxo int,
    id_sensor int,
    PRIMARY KEY(id)
);

INSERT INTO registro (data_hora, fluxo, id_sensor) VALUES ("2022-01-20 10:00:59", 200, 1),
														  ("2022-02-07 13:30:00", 500, 2),
														  ("2022-01-02 19:59:30", 200, 3),
														  ("2022-02-05 12:59:59", 450, 4),
                                                          ("2022-01-15 15:39:59", 600, 5),
                                                          ("2022-02-10 21:20:00", 800, 6);                                                          

SELECT * FROM usuario;
SELECT * FROM sensor;
SELECT * FROM registro;