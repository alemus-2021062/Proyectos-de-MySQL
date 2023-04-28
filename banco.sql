create database banco;
use banco;

create table zona(
id_zona integer not null,
nombre varchar(50),
primary key (id_zona)
);

create table departamento(
id_departamento integer not null,
nombre varchar(50),
primary key (id_departamento)
);

create table colonia(
id_colonia integer not null,
nombre varchar(50),
primary key (id_colonia)
);

create table municipio(
id_municipio integer not null,
nombre varchar(50),
primary key (id_municipio)
);

create table trabajador(
id_trabajador integer not null,
nombre varchar (50),
apellido varchar (50),
direccion varchar (50),
telefono integer,
primary key (id_trabajador)
);

create table sucursales(
id_s integer not null,
nombre varchar(50),
id_trabajador integer,
id_zona integer,
id_colonia integer,
id_departamento integer,
id_municipio integer,
primary key (id_s),
foreign key (id_trabajador) references trabajador(id_trabajador),
foreign key (id_zona) references zona(id_zona),
foreign key (id_departamento) references departamento(id_departamento),
foreign key (id_colonia) references colonia(id_colonia),
foreign key (id_municipio) references municipio(id_municipio)
);

create table transaccion(
id_transaccion integer not null,
tipo_transaccion varchar(50),
id_s integer,
id_trabajador integer,
primary key (id_transaccion),
foreign key (id_s) references sucursales(id_s),
foreign key (id_trabajador) references trabajador(id_trabajador)
);

create table cuentahabiente(
id_cch integer not null,
nombre varchar(50),
apellido varchar(50),
direccion varchar(50),
telefono integer,
primary key(id_cch)
);

create table mancomunada(
id_mancomunada integer not null,
id_cch integer,
primary key(id_mancomunada),
foreign key (id_cch)references cuentahabiente(id_cch)
);

create table tipo_cuenta(
id_tc integer not null,
nombre varchar(50),
primary key (id_tc)
);

create table asig_tipo_cuenta(
id_atc integer not null,
id_tc integer,
id_cch integer,
id_s integer,
id_mancomunada integer,
primary key (id_atc),
foreign key (id_tc)references tipo_cuenta(id_tc),
foreign key (id_cch)references cuentahabiente(id_cch),
foreign key (id_s)references sucursales(id_s),
foreign key (id_mancomunada) references mancomunada(id_mancomunada)
); 


create table tipo_tarjeta(
id_tt integer not null,
tipo varchar(50),
fecha_vencimiento date,
interes decimal,
primary key(id_tt)
);

create table asig_tipo_tarjeta(
id_att integer not null,
id_tt integer,
id_cch integer,
id_s integer,
primary key(id_att),
foreign key(id_tt)references tipo_tarjeta(id_tt),
foreign key(id_cch)references cuentahabiente(id_cch),
foreign key(id_s)references sucursales(id_s) 
);


insert into zona(id_zona,nombre)
values(1,"zona 12");
insert into zona(id_zona,nombre)
values(2,"zona 1");
insert into zona(id_zona,nombre)
values(3,"zona 2");
insert into zona(id_zona,nombre)
values(4,"zona 3");
insert into zona(id_zona,nombre)
values(5,"zona 4");
insert into zona(id_zona,nombre)
values(6,"zona 5");
insert into zona(id_zona,nombre)
values(7,"zona 6");
insert into zona(id_zona,nombre)
values(8,"zona 8");
insert into zona(id_zona,nombre)
values(9,"zona 13");
insert into zona(id_zona,nombre)
values(10,"zona 14");

insert into departamento(id_departamento,nombre)
value(1,"alta verapaz");
insert into departamento(id_departamento,nombre)
value(2,"baja verapaz");
insert into departamento(id_departamento,nombre)
value(3,"peten");
insert into departamento(id_departamento,nombre)
value(4,"chiquimula");
insert into departamento(id_departamento,nombre)
value(5,"huehuetenango");
insert into departamento(id_departamento,nombre)
value(6,"ciudad de guatemala");
insert into departamento(id_departamento,nombre)
value(7,"zacapa");
insert into departamento(id_departamento,nombre)
value(8,"el progreso");
insert into departamento(id_departamento,nombre)
value(9,"izabal");
insert into departamento(id_departamento,nombre)
value(10,"chimaltenango");

insert into colonia(id_colonia,nombre)
value(1,"colonia quetzal");
insert into colonia(id_colonia,nombre)
value(2,"colonia modelo 1");
insert into colonia(id_colonia,nombre)
value(3,"colonia modelo 2");
insert into colonia(id_colonia,nombre)
value(4,"colonia popular");
insert into colonia(id_colonia,nombre)
value(5,"colonia entre rios");
insert into colonia(id_colonia,nombre)
value(6,"colonia palmeras del norte");
insert into colonia(id_colonia,nombre)
value(7,"colonia la independencia");
insert into colonia(id_colonia,nombre)
value(8,"colonia ferrocarrilero");
insert into colonia(id_colonia,nombre)
value(9,"colonia las palmas");
insert into colonia(id_colonia,nombre)
value(10,"colonia el maestro");

insert into municipio(id_municipio,nombre)
value(1,"escuintla");
insert into municipio(id_municipio,nombre)
value(2,"jalapa");
insert into municipio(id_municipio,nombre)
value(3,"jutiapa");
insert into municipio(id_municipio,nombre)
value(4,"quetzaltenango");
insert into municipio(id_municipio,nombre)
value(5,"quiche");
insert into municipio(id_municipio,nombre)
value(6,"retalhuleu");
insert into municipio(id_municipio,nombre)
value(7,"sacatepequez");
insert into municipio(id_municipio,nombre)
value(8,"san marcos");
insert into municipio(id_municipio,nombre)
value(9,"santa rosa");
insert into municipio(id_municipio,nombre)
value(10,"solola");

insert into trabajador(id_trabajador, nombre, apellido, direccion,telefono)
value (1,"Moises","Lemus","zona 12 calle walavi",15263221);
insert into trabajador(id_trabajador, nombre, apellido, direccion,telefono)
value (2,"Alberto","Alvarado","zona 13 calle anderson",15223421);
insert into trabajador(id_trabajador, nombre, apellido, direccion,telefono)
value (3,"Gerardo","Enriquez","zona 1 calle lorenzo",15234511);
insert into trabajador(id_trabajador, nombre, apellido, direccion,telefono)
value (4,"Josue","Hernandez","zona 2 calle wilson",78543221);
insert into trabajador(id_trabajador, nombre, apellido, direccion,telefono)
value (5,"Benjamin","de Leon","zona 3 calle barson",16548221);
insert into trabajador(id_trabajador, nombre, apellido, direccion,telefono)
value (6,"Mauricio","Hernandez","zona 4 calle landivar",15462321);
insert into trabajador(id_trabajador, nombre, apellido, direccion,telefono)
value (7,"Fernanda","Guerra","zona 5 calle waldort",1527771);
insert into trabajador(id_trabajador, nombre, apellido, direccion,telefono)
value (8,"Miguel","de los reyes","zona 6 calle mitwur",1526554);
insert into trabajador(id_trabajador, nombre, apellido, direccion,telefono)
value (9,"Gloria","Alvarado","zona 7 calla varalo",14545221);
insert into trabajador(id_trabajador, nombre, apellido, direccion,telefono)
value (10,"Elias","Balan","zona 10 calle vasquez",17898221);

insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(1,"G&T",1,2,1,2,1);
insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(2,"G&T2",2,1,2,1,2);
insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(3,"G&T3",3,4,3,4,3);
insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(4,"G&T4",4,3,4,3,4);
insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(5,"G&T5",5,6,5,6,5);
insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(6,"G&T6",6,5,6,5,6);
insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(7,"G&T7",7,8,7,8,7);
insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(8,"G&T8",8,7,8,7,8);
insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(9,"G&T9",9,10,9,10,9);
insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(10,"G&T10",10,9,10,9,10);
insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(11,"G&T4",6,7,3,1,7);
insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(12,"G&T4",8,5,4,1,9);
insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(13,"G&T4",1,3,8,9,2);
insert into sucursales(id_s,nombre,id_trabajador,id_zona,id_colonia,id_departamento,id_municipio)
values(14,"G&T4",5,3,8,9,2);

insert into transaccion(id_transaccion,tipo_transaccion,id_s,id_trabajador)
value(1,"credito",1,2);
insert into transaccion(id_transaccion,tipo_transaccion,id_s,id_trabajador)
value(2,"efectivo",4,7);
insert into transaccion(id_transaccion,tipo_transaccion,id_s,id_trabajador)
value(3,"externa",6,3);
insert into transaccion(id_transaccion,tipo_transaccion,id_s,id_trabajador)
value(4,"interna",8,9);

insert into cuentahabiente(id_cch,nombre,apellido,direccion,telefono)
values(1,"Moises","Alvarado","zona 10 calle vasquez",51849565);
insert into cuentahabiente(id_cch,nombre,apellido,direccion,telefono)
values(2,"Gerardo","Lemus","zona 7 calla varalo",51748554);
insert into cuentahabiente(id_cch,nombre,apellido,direccion,telefono)
values(3,"Alberto","Vasquez","zona 6 calle mitwur",51968554);
insert into cuentahabiente(id_cch,nombre,apellido,direccion,telefono)
values(4,"Josue","de Leon","zona 5 calle waldort",51415221);
insert into cuentahabiente(id_cch,nombre,apellido,direccion,telefono)
values(5,"Benjamin","Hernandez","zona 4 calle landivar",51542114);
insert into cuentahabiente(id_cch,nombre,apellido,direccion,telefono)
values(6,"Mauricio","Hernandez","zona 3 calle barson",51365412);
insert into cuentahabiente(id_cch,nombre,apellido,direccion,telefono)
values(7,"Carolina","Guerra","zona 2 calle wilson",51655412);
insert into cuentahabiente(id_cch,nombre,apellido,direccion,telefono)
values(8,"Jose","de los Reyes","zona 1 calle lorenzo",51846251);
insert into cuentahabiente(id_cch,nombre,apellido,direccion,telefono)
values(9,"Esperanza","Gonzalez","zona 13 calle anderson",51658426);
insert into cuentahabiente(id_cch,nombre,apellido,direccion,telefono)
values(10,"Jorge","Lemus","zona 12 calle walavi",51357562);

insert into mancomunada(id_mancomunada,id_cch)
values(1,2);
insert into mancomunada(id_mancomunada,id_cch)
values(2,1);
insert into mancomunada(id_mancomunada,id_cch)
values(3,4);
insert into mancomunada(id_mancomunada,id_cch)
values(4,3);
insert into mancomunada(id_mancomunada,id_cch)
values(5,6);
insert into mancomunada(id_mancomunada,id_cch)
values(6,5);
insert into mancomunada(id_mancomunada,id_cch)
values(7,8);
insert into mancomunada(id_mancomunada,id_cch)
values(8,7);
insert into mancomunada(id_mancomunada,id_cch)
values(9,10);
insert into mancomunada(id_mancomunada,id_cch)
values(10,9);

insert into tipo_cuenta(id_tc,nombre)
values(1,"corriente");
insert into tipo_cuenta(id_tc,nombre)
values(2,"monetaria");
insert into tipo_cuenta(id_tc,nombre)
values(3,"ahorro");
insert into tipo_cuenta(id_tc,nombre)
values(4,"inversion");

insert into asig_tipo_cuenta(id_atc,id_tc,id_cch,id_s,id_mancomunada)
values(1,1,2,1,2);
insert into asig_tipo_cuenta(id_atc,id_tc,id_cch,id_s,id_mancomunada)
values(2,2,1,2,1);
insert into asig_tipo_cuenta(id_atc,id_tc,id_cch,id_s,id_mancomunada)
values(3,4,3,4,4);
insert into asig_tipo_cuenta(id_atc,id_tc,id_cch,id_s,id_mancomunada)
values(4,3,4,3,3);
insert into asig_tipo_cuenta(id_atc,id_tc,id_cch,id_s,id_mancomunada)
values(5,4,5,6,5);
insert into asig_tipo_cuenta(id_atc,id_tc,id_cch,id_s,id_mancomunada)
values(6,3,6,5,6);
insert into asig_tipo_cuenta(id_atc,id_tc,id_cch,id_s,id_mancomunada)
values(7,2,7,8,7);
insert into asig_tipo_cuenta(id_atc,id_tc,id_cch,id_s,id_mancomunada)
values(8,1,8,7,8);
insert into asig_tipo_cuenta(id_atc,id_tc,id_cch,id_s,id_mancomunada)
values(9,3,9,10,9);
insert into asig_tipo_cuenta(id_atc,id_tc,id_cch,id_s,id_mancomunada)
values(10,2,10,9,10);
insert into asig_tipo_cuenta(id_atc,id_tc,id_cch,id_s,id_mancomunada)
values(11,3,3,4,7);
insert into asig_tipo_cuenta(id_atc,id_tc,id_cch,id_s,id_mancomunada)
values(12,3,4,3,6);
insert into asig_tipo_cuenta(id_atc,id_tc,id_cch,id_s,id_mancomunada)
values(13,3,2,3,8);

insert into tipo_tarjeta(id_tt,tipo,fecha_vencimiento,interes)
values(1,"clasica",'2025-12-31','0.10');
insert into tipo_tarjeta(id_tt,tipo,fecha_vencimiento,interes)
values(2,"oro",'2029-12-31','0.10');
insert into tipo_tarjeta(id_tt,tipo,fecha_vencimiento,interes)
values(3,"platino",'2030-12-31','1.60');
insert into tipo_tarjeta(id_tt,tipo,fecha_vencimiento,interes)
values(4,"diamante",'2035-12-31','3.50');

insert into asig_tipo_tarjeta(id_att,id_tt,id_cch,id_s)
values(1,1,2,1);
insert into asig_tipo_tarjeta(id_att,id_tt,id_cch,id_s)
values(2,2,1,2);
insert into asig_tipo_tarjeta(id_att,id_tt,id_cch,id_s)
values(3,3,4,3);
insert into asig_tipo_tarjeta(id_att,id_tt,id_cch,id_s)
values(4,4,3,4);
insert into asig_tipo_tarjeta(id_att,id_tt,id_cch,id_s)
values(5,4,6,5);
insert into asig_tipo_tarjeta(id_att,id_tt,id_cch,id_s)
values(6,3,5,6);
insert into asig_tipo_tarjeta(id_att,id_tt,id_cch,id_s)
values(7,2,8,7);
insert into asig_tipo_tarjeta(id_att,id_tt,id_cch,id_s)
values(8,1,7,8);
insert into asig_tipo_tarjeta(id_att,id_tt,id_cch,id_s)
values(9,2,10,9);
insert into asig_tipo_tarjeta(id_att,id_tt,id_cch,id_s)
values(10,3,9,10);
insert into asig_tipo_tarjeta(id_att,id_tt,id_cch,id_s)
values(11,3,2,1);
insert into asig_tipo_tarjeta(id_att,id_tt,id_cch,id_s)
values(12,3,2,2);


#---------------------------------Ejercicios de consultas de cuenta bancaria-----------------------#

select count(id_s) from sucursales where id_trabajador=2;

select asig_tipo_cuenta.id_mancomunada,cuentahabiente.nombre, cuentahabiente.apellido, cuentahabiente.telefono from cuentahabiente,asig_tipo_cuenta
where asig_tipo_cuenta.id_cch=cuentahabiente.id_cch and asig_tipo_cuenta.id_mancomunada=3;

select sucursales.nombre as sucursal, count(id_cch) as cuentahabientes from asig_tipo_cuenta,sucursales 
where asig_tipo_cuenta.id_s=sucursales.id_s and sucursales.nombre="G&T4";

select sucursales.nombre as sucursal, trabajador.nombre, trabajador.apellido, trabajador.telefono from sucursales, trabajador 
where sucursales.id_trabajador=trabajador.id_trabajador and sucursales.nombre="G&T4";

select sucursales.nombre as sucursal, trabajador.nombre, trabajador.apellido, trabajador.telefono from sucursales, trabajador
where sucursales.id_trabajador=trabajador.id_trabajador and sucursales.nombre="G&T4" order by apellido desc;
select sucursales.nombre as sucursal, trabajador.nombre, trabajador.apellido, trabajador.telefono from sucursales, trabajador
where sucursales.id_trabajador=trabajador.id_trabajador and sucursales.nombre="G&T4" order by apellido asc;

select sucursales.nombre as sucursal,count(cuentahabiente.id_cch) as cuentahabientes,cuentahabiente.nombre 
from cuentahabiente, sucursales, tipo_cuenta, asig_tipo_cuenta
where asig_tipo_cuenta.id_s=sucursales.id_s and asig_tipo_cuenta.id_cch=cuentahabiente.id_cch 
and asig_tipo_cuenta.id_tc=tipo_cuenta.id_tc and asig_tipo_cuenta.id_tc=3;

select sucursales.nombre as sucursal, cuentahabiente.nombre, count(tipo_tarjeta.id_tt) as conteo
from cuentahabiente, asig_tipo_tarjeta, sucursales, tipo_tarjeta
where asig_tipo_tarjeta.id_s=sucursales.id_s and asig_tipo_tarjeta.id_cch=cuentahabiente.id_cch and 
asig_tipo_tarjeta.id_tt=tipo_tarjeta.id_tt and asig_tipo_tarjeta.id_cch=2;




