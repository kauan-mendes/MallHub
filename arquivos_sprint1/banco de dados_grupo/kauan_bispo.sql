create database MALLHUB;
use MALLHUB;

create table cliente (
idUsuario int primary key auto_increment,
cidade varchar(40),
estado varchar(20),
emailUsuario varchar(100),
telefoneUsuario char(20),
cnpj char(30),
cep char(20),
senha varchar(17));

insert into cliente (cidade,estado,emailUsuario,telefoneUsuario,cnpj,cep,senha) values
("São Paulo","SP","aricanduvashopping@gmail.com",11974317531,67301961000107,89610970,"aricanduva123"),
("São Paulo","SP","itaquerashopping@gmail.com",11917342793,49399272000103,94500320,"itaquera194"),
("São Paulo","SP","shoppingD@gmail.com",11907219644,79510856000167,49095190,"dshopping413"),
("São Paulo","SP","centernorteshopping@gmail.com",11997254662,76302118000136,64048155,"nortecenter123");

(09101925000101,"Shopping Higienopolis","CONDOMINIO Shopping patio higiemopoçis","08645153","Sao paulo","SP","Av higienopolis",618,"higiemopolis@outlook.com",11863531975,"higie083")
(9764749'634184,"Shopping são cristovão"," Shopping cristovao colombo","936417312","Santa catarina","SC","Av Chaves",1010,"cristovao@outlook.com",48938164551,"ovao078423")

select * from cliente;


create table sensores (
	idSensor int primary key auto_increment,
    idCliente int,
    nomeSensor varchar(20),
    localidade varchar(20),
    dataRegistros date,
    registros int,
    hora char(12));
    

insert into sensores (idCliente,nomeSensor,localidade,dataRegistros,registros,hora) values 
(1, "Bloqueio", "entrada 01", "2022-05-09","786264","18:00"),
(1, "Bloqueio", "entrada 02", "2022-10-20","34562324","10:40"),
(1, "Bloqueio", "entrada 03", "2022-12-30","197254431","17:24"),
(2, "Bloqueio", "entrada 01", "2022-02-12","3351334","11:35"),
(2, "Bloqueio", "entrada 02", "2022-11-04","7813640","20:37"),
(2, "Bloqueio", "entrada 03", "2022-03-01","56185424","17:54"),
(3, "Bloqueio", "entrada 01", "2022-04-07","71567452","12:00"),
(3, "Bloqueio", "entrada 02", "2022-07-14","96851634","09:12"),
(3, "Bloqueio", "entrada 03", "2022-08-20","124698143","01:03"),
(4, "Bloqueio", "entrada 01", "2022-03-07","751983743","19:17"),
(4, "Bloqueio", "entrada 02", "2022-05-10","971345673","05:02"),
(4, "Bloqueio", "entrada 03", "2022-08-22","137402424","14:36");

select * from sensores;

drop database MALLHUB