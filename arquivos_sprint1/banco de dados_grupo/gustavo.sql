create database MallHub;
use MallHub;

create table Clientes (
idclientes int auto_increment,
Empresa varchar (40),
Nome varchar (40),
CNPJ char (14),
CEP char (8),
email varchar (30),
contato varchar (11),
primary key (idclientes)
);

insert into Clientes
(Empresa, Nome, CNPJ, CEP, email, contato)
values
('Shopping Itaquera', 'Leandro', '12234576800012', '08220900', 'itaquera.shopping@gmail.com', '1120403635'),
('Shopping Tatuape', 'Roberto', '12803548900076', '03306900', 'shoppingtatuape@gmail.com', '1120907400'),
('Shopping Aricanduva', 'Luiza', '17830467500081', '03527000', 'aricanduvacontato@gmail.com', '08007747071'),
('Shopping Center Norte', 'Marcos', '12346879300034', '02089900', 'centernortecontato@gmail.com', '1122245959');

select * from Clientes;

create table Usuarios(
idusuario int auto_increment,
username varchar (45),
senha varchar (40),
primary key (idusuario)
);

insert into Usuarios
(username, senha)
values
('itaquera shopping', '874947392829'),
('tatuape shopping', '223833212hde19'),
('Arincanduvashopping', '172627281910918ushw'),
('centernortee', 'w2eg3ye3w2291un');

select * from Usuarios;

create table registros(
idregistro int auto_increment,
localidade varchar (50),
dados varchar(40),
primary key (idregistro)
);

insert into registros
(localidade, dados)
values
('Ala-sudeste', '9 pessoas por metro quadrado' ),
('Ala-sul', '7 pessoas por metro quadrado'),
('Ala-norte', '8 pessoas por metro quadrado'),
('Ala-nordeste', '9 pessoas por metro quadrado');

select * from registros;

alter table registros add dataa date;
alter table registros add hora varchar (7);

update registros set dataa = '2021-12-27' where idregistro = 1;
update registros set dataa = '2022-02-10' where idregistro = 2;
update registros set dataa = '2021-08-03' where idregistro = 3;
update registros set dataa = '2022-01-25' where idregistro = 4;

update registros set hora = '18:00' where idregistro = 1;
update registros set hora = '19:30' where idregistro = 2;
update registros set hora= '14:00' where idregistro = 3;
update registros set hora = '15:45' where idregistro = 4;
select * from registros where dataa like "%7";
update registros set hora = null where idregistro= 1;
select * from registros;

