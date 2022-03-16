create database MallHub;
use MallHub;
create table Clientes(
Id_cliente int auto_increment Not null,
Nome_representante varchar (40),
Empresa varchar (40),
Telefone char (10),
CNPJ char(14),
CEP char(8),
Primary Key (Id_cliente)
);
create table Usuarios(
Id_user int auto_increment Not Null,
username varchar (12),
Senha varchar(10),
primary key (Id_user)
)
;
truncate table Clientes;
create table Sensores(
Id_sensor int Primary key auto_increment Not null,
Localizacao varchar (25),
Medicao int(18)
);
insert into Clientes (Nome_representante, Empresa, Telefone, CNPJ, CEP)  
values ('Leonardo Nacagaua','Shopping Morumbi',955628954,83927374,'09220608'),
       ('Gabriel Maximiano','Grand Plaza',988272536,836289428,'09111780'),
       ('Yohan Torquato', 'Shopping Grand Plaza', 988763968,937293716, '09528362'),
       ('Maria Eduarda Ferreira','Center Norte',973816372,928374657,'09226371');
insert into Usuarios (username, Senha)
values ('leozinho', 'leo1234'),
	   ('gabs','gabr9283'),
       ('yantorquato','hudson'),
       ('Maahjx','vini');       

select * from Clientes where CEP like '2%'; 
select*from Sensores;
insert into Sensores (localizacao, medicao)
values ('praça de alimentação','0'),
	   ('entrada A','1'),
       ('entrada B','0'),
       ('entrada cinema','1');
alter table Sensores add data_hora varchar (8);
update Sensores Set data_hora = '11/03 11:00' where id_sensor = 1;
alter table Sensores modify data_hora varchar (11);
select*from Usuarios;
truncate table Sensores;
select*from Sensores;
