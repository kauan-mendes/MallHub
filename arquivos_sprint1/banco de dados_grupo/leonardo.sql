create database MallHub;
use MallHub;
create table Clientes
(Id int primary key auto_increment, Nome_da_empresa varchar(50), CNPJ char(14), Responsável_pela_empresa varchar(50), Endereço varchar(70), 
CEP char(8));
alter table Clientes rename column Id to IdClientes;
drop table Clientes;

create table Usuários_Login
(Id int primary key auto_increment, Identificação char(10), Senha char(8));

alter table Clientes add column Email varchar(50);

select * from Clientes;

insert into Clientes (Nome_da_empresa, CNPJ, Responsável_pela_empresa, Endereço, CEP, Email)values
('Shopping Aricanduva', '03586783549861', 'Roberto Pereira', 'Avenida Aricanduva, 5555','08375000','shoppingaricanduva@gmail.com'),
('Shopping Tatuapé','23587412963548','Kauan Bispo','Avenida Barretos, 2555','25687000','shoppingtatuape@gmail.com'),
('Shopping Tucuruvi','54789635124852','Vinicius Torres', 'Avenida Campos Moraes, 5656', '58246957', 'shoppingtucuruvi@gmail.com');

select * from Clientes;

select * from Usuários_Login;

alter table Usuários_Login rename column Id to IdUsuários;

alter table Usuários_Login modify column Identificação char (30);


insert into Usuários_Login (Identificação, Senha) values
('shopping_aricanduva', '10203040'),
('shopping_tatuape','11223344'),
('shopping_tucuruvi','12345678');

select * from Usuários_Login;

create table Registros
(IdRegistros int primary key auto_increment, Localidade_do_sensor varchar(50), Dados varchar(50), Datas date, Hora varchar(20));

select * from Registros;
select * from Clientes;
select * from Usuários_Login;
insert into Registros
(Localidade_do_sensor, Dados, Datas, Hora) values
('Ala Sul', '5 pessoas por metro quadrado', '2021-02-20', '9:03'),
('Ala Norte', '12 pessoas por metro quadrdo', '2021-01-23', '17:02'),
('Ala Leste', '3 pessoas por metro quadrado', '2021-01-17', '15:25');




select * from Clientes where Nome_da_empresa like '%a';

select * from Registros, Clientes, Usuários_Login;
select * from Registros;
select * from Clientes;
select * from Usuários_Login;




