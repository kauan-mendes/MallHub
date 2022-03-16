create database Mall_Hub;
use Mall_Hub;
create table Cliente (
ID int primary key auto_increment,
Nome_da_empresa varchar (500),
Endereço varchar (200),
CEP varchar (11),
Nome_do_gestor varchar (100),
Email varchar (100),
Telefone varchar (15)
);

insert into Cliente value
(null, 'Shopping Aricanduva', 'Avenida Aricanduva, 5555', '03526000', 'Alice Deri', 'alice.deri@gmail.com', '20170482'),
(null, 'Shopping Eldorado', 'Av. Rebouças, 3970', '05402-600', 'Roberto Silva', 'roberto.silva@gmail.com', '20806949'),
(null, 'Shopping Morumbi', 'Av. Roque Petroni Júnior, 1089', '04707-900', 'Giovanna Sylf', 'giovanna.sylf@gmail.com', '23196472')
;

select * from Cliente;


use Mall_Hub;
create table Sensores(
ID int primary key auto_increment,
Nome_da_empresa varchar(200),
Localização_dos_sensores varchar(150),
Responsavel_instalação varchar (100),
Funcionamento_inicio date
);

insert into Sensores value
(null, 'Shopping Aricanduva', 'Praça de alimentação e entrenimento', 'Raphael', '2021-05-03'),
(null, 'Shopping Eldorado', 'Praça de alimentação e Comercio', 'Raphael', '2021-05-03'),
(null, 'Shopping Morumbi', 'Comercio e Alimentação', 'Davi', '2022-07-09');

select * from Sensores;

use Mall_Hub;
create table Registro (
ID int primary key auto_increment,
IDNome_da_empresa int,
Hora datetime,
Dados_Sensor int
);

insert into Registro value
(null, '1', '2021-05-03 7:30', '5000'),
(null, '2', '2021-05-03 9:00', '2000'),
(null, '3', '2022-07-09 2:00', '10000');

select * from Registro;
select * from Registro where Dia_de_semana = '%S';
