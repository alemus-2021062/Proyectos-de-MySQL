create database ferreteria;
use ferreteria;

create table tipo_herramienta(
id_tipo integer not null,
nombre	varchar(50),
descripcion varchar(150),
primary key (id_tipo)
);


create table marcas(
id_marcas integer not null,
nombre varchar(50),
descripcion varchar(150),
primary key (id_marcas)
);


create table inventario(
id_inventario integer not null,
nombre varchar(50),
precio float,
costo float,
en_existencia integer,
id_tipo integer,
id_marcas integer,
primary key (id_inventario),
foreign key (id_tipo) references tipo_herramienta(id_tipo),
foreign key (id_marcas) references marcas(id_marcas)
);


create table roles(
id_rol integer not null,
tipo_rol varchar(50),
descripcion varchar(150),
primary key (id_rol)
);


create table colaboradores(
id_colaborador integer not null,
nombre varchar(50),
apellido varchar(50),
telefono integer,
rol integer,
primary key (id_colaborador),
foreign key(rol)references roles(id_rol)
);


create table colonia(
id_colonia integer not null,
nombre varchar(50),
primary key (id_colonia)
);


create table zona(
id_zona integer not null,
nombre varchar(50),
primary key (id_zona)
);


create table ciudad(
id_ciudad integer not null,
nombre varchar(50),
primary key(id_ciudad)
);


create table departamento(
id_departamento integer not null,
nombre varchar (50),
primary key(id_departamento)
);


create table cliente(
id_cliente integer not null,
nombre varchar(50),
apellido varchar(50),
telefono integer,
id_departamento integer,
id_ciudad integer,
id_zona integer,
id_colonia integer,
primary key(id_cliente),
foreign key(id_departamento)references departamento(id_departamento),
foreign key (id_ciudad)references ciudad(id_ciudad),
foreign key(id_zona)references zona(id_zona),
foreign key(id_colonia)references colonia(id_colonia)
);


create table facturacion(
id_facturacion integer not null,
cantidad integer,
precio_total float,
id_cliente integer,
id_colaborador integer,
id_inventario integer,
primary key(id_facturacion),
foreign key (id_cliente)references cliente(id_cliente),
foreign key (id_colaborador)references colaboradores(id_colaborador),
foreign key (id_inventario)references inventario(id_inventario)
);


insert into tipo_herramienta(id_tipo,nombre,descripcion)
values(1,'manuales','de uso unico');
insert into tipo_herramienta(id_tipo,nombre,descripcion)
values(2,'mecanicas','mas que todo para carro');
insert into tipo_herramienta(id_tipo,nombre,descripcion)
values(3,'medicion','para medir');
insert into tipo_herramienta(id_tipo,nombre,descripcion)
values(4,'corte','peligrosas');
insert into tipo_herramienta(id_tipo,nombre,descripcion)
values(5,'trazo','para trazar');
insert into tipo_herramienta(id_tipo,nombre,descripcion)
values(6,'corte','pa cortar');

insert into marcas(id_marcas,nombre,descripcion)
values(1,'DeWalt','super resistentes');
insert into marcas(id_marcas,nombre,descripcion)
values(2,'Makita','super ligeras');
insert into marcas(id_marcas,nombre,descripcion)
values(3,'bosch','trabajo especial');
insert into marcas(id_marcas,nombre,descripcion)
values(4,'Stanley','famosas');
insert into marcas(id_marcas,nombre,descripcion)
values(5,'Bellota','super eficientes');

insert into inventario(id_inventario,nombre,precio, costo, en_existencia, id_tipo, id_marcas)
values(1,'martillo',15,28,14,1,1);
insert into inventario(id_inventario,nombre,precio, costo, en_existencia, id_tipo, id_marcas)
values(2,'cerrucho',23,34,45,2,2);
insert into inventario(id_inventario,nombre,precio, costo, en_existencia, id_tipo, id_marcas)
values(3,'cierra',23,32,16,3,3);
insert into inventario(id_inventario,nombre,precio, costo, en_existencia, id_tipo, id_marcas)
values(4,'destornillador',43,67,34,4,5);
insert into inventario(id_inventario,nombre,precio, costo, en_existencia, id_tipo, id_marcas)
values(5,'alicate',43,54,67,5,4);
insert into inventario(id_inventario,nombre,precio, costo, en_existencia, id_tipo, id_marcas)
values(6,'alicate',432,23,54,5,4);

insert into roles(id_rol,tipo_rol,descripcion)
values(1,' gerente','mucho poder');
insert into roles(id_rol,tipo_rol,descripcion)
values(2,'practicante','aprendiz');
insert into roles(id_rol,tipo_rol,descripcion)
values(3,'conserje','limpieza');
insert into roles(id_rol,tipo_rol,descripcion)
values(4,'vendedor','vende cosas');
insert into roles(id_rol,tipo_rol,descripcion)
values(5,'cogerente','mucho poder pero no tanto');

insert into colaboradores(id_colaborador,nombre,apellido,telefono,rol)
values(1,'Moises','Lemus',15266251,1);
insert into colaboradores(id_colaborador,nombre,apellido,telefono,rol)
values(2,'Alberto','Alvarado',15268749,2);
insert into colaboradores(id_colaborador,nombre,apellido,telefono,rol)
values(3,'Gerardo','Olsen',15165151,3);
insert into colaboradores(id_colaborador,nombre,apellido,telefono,rol)
values(4,'Josue','Hernandez',15354251,4);
insert into colaboradores(id_colaborador,nombre,apellido,telefono,rol)
values(5,'Benjamin','De Leon',15248251,5);

insert into colonia(id_colonia,nombre)
values(1,'colonia quetzal');
insert into colonia(id_colonia,nombre)
values(2,'colonia popular');
insert into colonia(id_colonia,nombre)
values(3,'colonia entre rios');
insert into colonia(id_colonia,nombre)
values(4,'colonia palmeras del norte');
insert into colonia(id_colonia,nombre)
values(5,'colonia la independencia');

insert into zona(id_zona,nombre)
values(1,'zona 12');
insert into zona(id_zona,nombre)
values(2,'zona 11');
insert into zona(id_zona,nombre)
values(3,'zona 1');
insert into zona(id_zona,nombre)
values(4,'zona 10');
insert into zona(id_zona,nombre)
values(5,'zona 13');

insert into ciudad(id_ciudad,nombre)
values(1,'ciudad de Guatemala');
insert into ciudad(id_ciudad,nombre)
values(2,'quetzaltenango');
insert into ciudad(id_ciudad,nombre)
values(3,'puerto barrios');
insert into ciudad(id_ciudad,nombre)
values(4,'alta verapaz');
insert into ciudad(id_ciudad,nombre)
values(5,'zacapa');

insert into departamento(id_departamento,nombre)
values(1,'chimaltenango');
insert into departamento(id_departamento,nombre)
values(2,'baja verapaz');
insert into departamento(id_departamento,nombre)
values(3,'peten');
insert into departamento(id_departamento,nombre)
values(4,'izabal');
insert into departamento(id_departamento,nombre)
values(5,'el progreso');

insert into cliente(id_cliente,nombre,apellido,telefono,id_departamento,id_ciudad,id_zona,id_colonia)
values(1,'Mauricio','Hernandez',45665489,1,2,1,2);
insert into cliente(id_cliente,nombre,apellido,telefono,id_departamento,id_ciudad,id_zona,id_colonia)
values(2,'Jose','Reyes',45468589,2,1,2,1);
insert into cliente(id_cliente,nombre,apellido,telefono,id_departamento,id_ciudad,id_zona,id_colonia)
values(3,'Miguel','Alvarado',45664856,3,4,3,4);
insert into cliente(id_cliente,nombre,apellido,telefono,id_departamento,id_ciudad,id_zona,id_colonia)
values(4,'Fernanda','Guerra',48565489,4,3,4,3);
insert into cliente(id_cliente,nombre,apellido,telefono,id_departamento,id_ciudad,id_zona,id_colonia)
values(5,'Carolina','Alvarado',4513259,5,5,5,5);

insert into facturacion(id_facturacion,cantidad,precio_total,id_cliente,id_colaborador,id_inventario)
values(1,23,800,1,2,1);
insert into facturacion(id_facturacion,cantidad,precio_total,id_cliente,id_colaborador,id_inventario)
values(2,56,4500,2,1,2);
insert into facturacion(id_facturacion,cantidad,precio_total,id_cliente,id_colaborador,id_inventario)
values(3,65,876,3,4,3);
insert into facturacion(id_facturacion,cantidad,precio_total,id_cliente,id_colaborador,id_inventario)
values(4,76,123,4,3,4);
insert into facturacion(id_facturacion,cantidad,precio_total,id_cliente,id_colaborador,id_inventario)
values(5,34,687,5,5,5);

update zona set nombre='zona 12' where id_zona=2;
update departamento set nombre='peten' where id_departamento=1;
alter table facturacion add column fecha date;
update facturacion set fecha='2005-01-01' where id_facturacion=1;
update facturacion set fecha='2005-01-11' where id_facturacion=2;
update facturacion set fecha='2005-01-15' where id_facturacion=3;
update facturacion set fecha='2005-01-02' where id_facturacion=4;
update facturacion set fecha='2005-01-09' where id_facturacion=5;

#---------------------------------Tarea de ejercicios-----------------------------

select id_cliente,nombre,apellido,telefono from cliente;
select id_inventario,nombre,precio,en_existencia from inventario;
select count(nombre) from marcas;
select count(nombre) from zona where nombre='zona 12';
select count(nombre) from departamento where nombre='peten';
select sum(en_existencia) from inventario;
select sum(id_tipo) from inventario where id_tipo=5;
select count(fecha) as No_facturas from facturacion where fecha between '2005-01-01' and '2005-01-20';
select sum(cantidad) as cantidad_vendida from facturacion where fecha between '2005-01-01' and '2005-01-20';
select inventario.nombre, inventario.en_existencia as cantidad from inventario, marcas
where inventario.id_marcas=marcas.id_marcas and marcas.id_marcas=2;
select inventario.nombre, inventario.en_existencia as cantidad from inventario, marcas
where inventario.id_marcas=marcas.id_marcas and marcas.nombre='DeWalt';




