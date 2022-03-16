create database mallhub;

use mallhub;

create table sensores(
id int primary key auto_increment,
nome varchar (50),
medicao int,
localidade varchar(40)
);


select * from cadastro;

insert into cadastro values
(null,'Kaw123','kawan.sptech.com','1234'),
(null,'leo123','leo.sptech.com','5678'),
(null,'Kau123','kauan.sptech.com','91011'),
(null,'maria123','maria.sptech.com','121314'),
(null,'yohan123','yohan.sptech.com','151617');

truncate table cadastro;

insert into clientes values
(null,'Kawan goncalves','shopping itaquera','13235049'),
(null,'leonardo nakagawa','shopping tatuape','58674618'),
(null,'Kauan bispo','shopping aricanduva','91051611'),
(null,'maria eduarda','shopping paulista','12120314'),
(null,'yohan hudson','shopping ligth','15133617');

select * from sensores;

insert into sensores values
(null,'LMT','0','praca de alimentacao'),
(null,'LTX','1','no meio do segundo piso'),
(null,'MTW','0','em frente a loja nike'),
(null,'RTC','1','entrada principal');

select * from clientes;