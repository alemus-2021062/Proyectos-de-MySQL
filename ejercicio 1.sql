show databases;
create database abarroteria;
drop database abarroteria;
use  abarroteria;

create table clientes(
id_cliente integer not null,
nit varchar(30),
nombre varchar(50),
apellido varchar(40),
direccion varchar(40),
telefono integer,
primary key(id_cliente)) ;

create table productos(
id_producto integer not null,
nombre varchar(30),
cantidad integer,
precio float,
costo float,
descripcion varchar(100),
primary key(id_producto));

create table factura(
id_factura integer not null,
id_cliente integer,
id_productos integer,
cantidad  integer,
total float,
primary key (id_factura),
foreign key(id_cliente)references clientes(id_cliente),
foreign key(id_productos)references productos(id_producto)
);

drop table factura;
show tables;
drop table clientes;
show columns from factura;
show columns from clientes;
alter table clientes add column e_mail varchar(30);
alter table clientes drop column e_mail;
alter table clientes add column e_mail varchar(30) after direccion;
alter table clientez rename to clientes;
insert into clientes(id_cliente,nit, nombre, apellido, direccion, telefono)
values(1,12456,'Moises','Lemus','zona 12 el mezquital',12345678);
insert into clientes(id_cliente,nit, nombre, apellido, direccion, telefono)
values(2,11111,'Moisesito','Olsen','zona 12',15151515);

select * from clientes;
show tables;

update clientes set nit=55555 where id_cliente=1;

delete from clientes where id_cliente=1;

select cantidad,total from factura where id_factura=1;
update factura set cantidad=54 where id_factura=1;

insert into factura(id_factura,id_cliente,id_productos,cantidad,total)
values(1,2,3,500,1000);

