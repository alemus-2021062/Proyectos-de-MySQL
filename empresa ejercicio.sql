create database empresa;
use empresa;

create table departamento
( id integer not null,
nombre varchar(20),
primary key (id));

create table empleados
(
id_empleado integer not null,
nombre varchar(20),
departamento_id integer,
primary key(id_empleado),
foreign key(departamento_id) references departamento(id));


insert into departamento values(33,'ventas');
insert into departamento values(34,'Ingenieria');
insert into departamento values(35,'Contabilidad');
insert into departamento values(36,'Marketing');
insert into departamento values(37,'Desarrollo');


insert into empleados values(100,'Juan',33);
insert into empleados values(101,'Alex',34);
insert into empleados values(102,'Diego',35);
insert into empleados values(103,'Alberto',33);
insert into empleados values(104,'Cristopher',36);
insert into empleados values(105,'Fabian',35);
#--------------------------Consultas JOIN-----------------------------------#
select * from empleados;
select * from departamento;

select * from empleados e
join departamento d on e.departamento_id=d.id;

select empleados.nombre, departamento.nombre from empleados
left join departamento on empleados.departamento_id=departamento.id;

select empleados.nombre, departamento.nombre from empleados
right join departamento on empleados.departamento_id=departamento.id;



delimiter $$
create procedure mostrarVariable()
begin
declare variable int;
	set variable = 23;

select variable; 
end$$
delimiter ;

call mostrarVariable(); 

delimiter $$
create procedure suma(a int, b int)
begin
	declare total int;
	set total=a+b;
select total;
end$$
delimiter ;

call suma(100, 555);

delimiter $$
create procedure consulta()
begin

select * from empleados;
 
end $$
delimiter ;

call consulta;

drop procedure consulta;

delimiter $$
create procedure depa()
begin
select departamento.nombre from departamento where departamento.id=33;
end$$
delimiter ;

call depa();

delimiter $$
create procedure consultaEmpleado(id int)
begin
	select * from empleados where id_empleado=id;
end $$
delimiter ;

call consultaEmpleado(100);

delimiter $$
create procedure insertarDatos(id int, nombre varchar(20))
begin
insert into departamento values (id, nombre);
end$$
delimiter ;
call insertarDatos(155, "auditoria");
call insertarDatos(1, "comercio de casas");
call insertarDatos(15, "cajotas");
call insertarDatos(1555, "desarrollo ambiental");

select * from departamento;

delimiter $$
create procedure modificarDatos()
begin
select departament;
end$$
delimiter ;






