create database reproductor;
use reproductor;

create table tipo_pago(
id_tipo_pago integer not null,
nombre varchar(50),
primary key(id_tipo_pago)
);

create table tipo_plan(
id_tipo_plan integer not null,
tipo_plan varchar(50),
precio decimal,
duracion varchar(50),
primary key (id_tipo_plan)
);

create table usuario(
id_usuario integer not null,
nombre_usuario varchar(50),
fecha_nac date,
pais_usuario varchar(50),
correo_usuario varchar(50),
contraseña_usuario varchar(50),
primary key (id_usuario)
);

create table cuenta(
id_cuenta integer not null,
id_usuario integer,
id_tipo_pago integer,
id_tipo_plan integer,
primary key(id_cuenta),
foreign key (id_usuario)references usuario(id_usuario),
foreign key (id_tipo_pago)references tipo_pago(id_tipo_pago),
foreign key (id_tipo_plan)references tipo_plan(id_tipo_plan)
);

create table artista(
id_artista integer not null,
nombre varchar(50),
nivel_fama varchar(50),
edad integer,
sexo varchar(50),
primary key (id_artista)
);

create table albumes(
id_albumes integer not null,
nombre varchar(50),
no_canciones integer,
duracion decimal,
primary key(id_albumes)
);

create table sencillo(
id_sencillo integer not null,
nombre varchar(50),
duracion decimal(50),
primary key(id_sencillo)
);

create table genero(
id_genero integer not null,
nombre varchar(50),
primary key(id_genero)
);

create table asig_artista_album(
id_aaa integer not null,
id_artista integer,
id_albumes integer,
primary key(id_aaa),
foreign key(id_artista)references artista(id_artista),
foreign key(id_albumes)references albumes(id_albumes)
);

create table asig_album_genero(
id_aag integer not null,
id_albumes integer,
id_genero integer,
primary key(id_aag),
foreign key(id_albumes)references albumes(id_albumes),
foreign key(id_genero)references genero(id_genero)
);

create table lista_reproduccion(
id_lista integer not null,
nombre varchar(50),
duracion decimal,
contador integer,
id_usuario integer,
id_aaa integer,
primary key(id_lista),
foreign key(id_usuario)references usuario(id_usuario),
foreign key(id_aaa)references asig_artista_album(id_aaa)
);

insert into tipo_pago(id_tipo_pago, nombre)
values (1, 'pay-pal');
insert into tipo_pago(id_tipo_pago, nombre)
values (2, 'tarjeta credito');
insert into tipo_pago(id_tipo_pago, nombre)
values (3, 'tarjeta debito');
insert into tipo_pago(id_tipo_pago, nombre)
values (4, 'tarjeta de regalo');

insert into tipo_plan (id_tipo_plan, tipo_plan, precio, duracion)
values (1, "gratuito", '00.00', '00.00');
insert into tipo_plan (id_tipo_plan, tipo_plan, precio, duracion)
values (2, "plateado", '05.99', '03.00');
insert into tipo_plan (id_tipo_plan, tipo_plan, precio, duracion)
values (3, "oro", '9.99', '6.00');
insert into tipo_plan (id_tipo_plan, tipo_plan, precio, duracion)
values (4, "diamante", '15.99', '12.00');

insert into usuario(id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario)
values(1, "Moises", '2005-01-11', "Guatemala", "moises@gmail.com", "local");
insert into usuario(id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario)
values(2, "Alberto", '2005-12-23', "Costa Rica", "Alberto@gmail.com", "sabado");
insert into usuario(id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario)
values(3, "Gerardo", '2005-11-21', "Panama", "Gerardo@gmail.com", "domingo");
insert into usuario(id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario)
values(4, "Josue", '2005-08-23', "El Salvador", "Josue@gmail.com", "Martes");
insert into usuario(id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario)
values(5, "Benjamin", '2005-06-15', "Honduras", "Benjamin@gmail.com", "Miercoles");
insert into usuario(id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario)
values(6, "Jose", '2005-01-2', "Venezuela", "Jose@gmail.com", "Jueves");
insert into usuario(id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario)
values(7, "Fernanda", '2005-05-25', "Holanda", "Fernanda@gmail.com", "Lunes");
insert into usuario(id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario)
values(8, "Jorge", '2005-12-18', "Canada", "jorge@gmail.com", "rancho");
insert into usuario(id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario)
values(9, "Gloria", '2005-04-13', "Israel", "gloria@gmail.com", "lunes");
insert into usuario(id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario)
values(10, "Carlos", '2005-10-19', "Peru", "carlos@gmail.com", "municipal");
insert into usuario(id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario)
values(11, "Carmen", '2005-11-11', "Guatemala", "carmen@gmail.com", "certificado");
insert into usuario(id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario)
values(12, "Ochoa", '2005-03-21', "Guatemala", "Ochoa@gmail.com", "panajachel");
insert into usuario(id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario)
values(13, "Pablo", '2005-10-31', "Guatemala", "Pablo@gmail.com", "rojosycremas");

insert into cuenta(id_cuenta, id_usuario, id_tipo_pago, id_tipo_plan)
values(1,1,2,2);
insert into cuenta(id_cuenta, id_usuario, id_tipo_pago, id_tipo_plan)
values(2,2,1,1);
insert into cuenta(id_cuenta, id_usuario, id_tipo_pago, id_tipo_plan)
values(3,3,3,3);
insert into cuenta(id_cuenta, id_usuario, id_tipo_pago, id_tipo_plan)
values(4,4,4,4);
insert into cuenta(id_cuenta, id_usuario, id_tipo_pago, id_tipo_plan)
values(5,5,3,4);
insert into cuenta(id_cuenta, id_usuario, id_tipo_pago, id_tipo_plan)
values(6,6,1,2);
insert into cuenta(id_cuenta, id_usuario, id_tipo_pago, id_tipo_plan)
values(7,7,2,1);
insert into cuenta(id_cuenta, id_usuario, id_tipo_pago, id_tipo_plan)
values(8,8,1,1);
insert into cuenta(id_cuenta, id_usuario, id_tipo_pago, id_tipo_plan)
values(9,9,4,1);
insert into cuenta(id_cuenta, id_usuario, id_tipo_pago, id_tipo_plan)
values(10,10,2,3);

insert into artista(id_artista, nombre, nivel_fama, edad, sexo)
values(1,"Ed Maverick", "alto", 25, "M");
insert into artista(id_artista, nombre, nivel_fama, edad, sexo)
values(2,"Gorillaz", "alto", 15, " ");
insert into artista(id_artista, nombre, nivel_fama, edad, sexo)
values(3,"zeballos", "medio", 10, "M");
insert into artista(id_artista, nombre, nivel_fama, edad, sexo)
values(4,"Jay Oc", "media", 5, "M");
insert into artista(id_artista, nombre, nivel_fama, edad, sexo)
values(5,"Sarah Cothran", "medio", 3, "F");
insert into artista(id_artista, nombre, nivel_fama, edad, sexo)
values(6,"Billy Eilish", "alto", 4, "F");
insert into artista(id_artista, nombre, nivel_fama, edad, sexo)
values(7,"Twenty one pilots", "alto", 10, " ");

insert into albumes(id_albumes, nombre, no_canciones, duracion)
values(1, "after hours", 15, '30.56');
insert into albumes(id_albumes, nombre, no_canciones, duracion)
values(2, "Ugly is beautiful", 12, '23.56');
insert into albumes(id_albumes, nombre, no_canciones, duracion)
values(3, "amnesia", 16, '23.26');
insert into albumes(id_albumes, nombre, no_canciones, duracion)
values(4, "alter ego", 25, '34.36');
insert into albumes(id_albumes, nombre, no_canciones, duracion)
values(5, "yesterday and today", 5, '12.67');
insert into albumes(id_albumes, nombre, no_canciones, duracion)
values(6, "after monday", 25, '45.87');
insert into albumes(id_albumes, nombre, no_canciones, duracion)
values(7, "look my heart", 18, '32.23');
insert into albumes(id_albumes, nombre, no_canciones, duracion)
values(8, "my dog is my friend", 23, '21.12');
insert into albumes(id_albumes, nombre, no_canciones, duracion)
values(9, "yes or no", 43, '45.67');
insert into albumes(id_albumes, nombre, no_canciones, duracion)
values(10, "california", 11, '38.38');

insert into sencillo(id_sencillo, nombre, duracion)
values(1, "viernes", '03.00');
insert into sencillo(id_sencillo, nombre, duracion)
values(2, "oasis", '05.00');
insert into sencillo(id_sencillo, nombre, duracion)
values(3, "gone gone gone", '03.00');
insert into sencillo(id_sencillo, nombre, duracion)
values(4, "freaks", '2.00');
insert into sencillo(id_sencillo, nombre, duracion)
values(5, "locura", '4.00');
insert into sencillo(id_sencillo, nombre, duracion)
values(6, "anestecia", '5.00');
insert into sencillo(id_sencillo, nombre, duracion)
values(7, "U", '1.00');
insert into sencillo(id_sencillo, nombre, duracion)
values(8, "prejuicios", '4.00');
insert into sencillo(id_sencillo, nombre, duracion)
values(9, "home", '3.00');
insert into sencillo(id_sencillo, nombre, duracion)
values(10, "life goes on", '1.00');

insert into genero (id_genero, nombre)
values (1, "rap");
insert into genero (id_genero, nombre)
values (2, "clasica");
insert into genero (id_genero, nombre)
values (3, "jazz");
insert into genero (id_genero, nombre)
values (4, "80s");

insert into asig_artista_album(id_aaa, id_artista, id_albumes)
values (1, 2, 2);
insert into asig_artista_album(id_aaa, id_artista, id_albumes)
values (2, 4, 2);
insert into asig_artista_album(id_aaa, id_artista, id_albumes)
values (3, 3, 5);
insert into asig_artista_album(id_aaa, id_artista, id_albumes)
values (4, 2, 7);
insert into asig_artista_album(id_aaa, id_artista, id_albumes)
values (5, 2, 3);
insert into asig_artista_album(id_aaa, id_artista, id_albumes)
values (6, 1, 1);
insert into asig_artista_album(id_aaa, id_artista, id_albumes)
values (7, 5, 3);
insert into asig_artista_album(id_aaa, id_artista, id_albumes)
values (8, 6, 4);
insert into asig_artista_album(id_aaa, id_artista, id_albumes)
values (9, 7, 7);
insert into asig_artista_album(id_aaa, id_artista, id_albumes)
values (10, 5, 10);

insert into asig_album_genero(id_aag, id_albumes, id_genero)
values(1, 1, 1);
insert into asig_album_genero(id_aag, id_albumes, id_genero)
values(2, 3, 2);
insert into asig_album_genero(id_aag, id_albumes, id_genero)
values(3, 4, 3);
insert into asig_album_genero(id_aag, id_albumes, id_genero)
values(4, 2, 4);
insert into asig_album_genero(id_aag, id_albumes, id_genero)
values(5, 10, 3);
insert into asig_album_genero(id_aag, id_albumes, id_genero)
values(6, 10, 3);
insert into asig_album_genero(id_aag, id_albumes, id_genero)
values(7, 2, 2);
insert into asig_album_genero(id_aag, id_albumes, id_genero)
values(8, 6, 2);
insert into asig_album_genero(id_aag, id_albumes, id_genero)
values(9, 8, 1);
insert into asig_album_genero(id_aag, id_albumes, id_genero)
values(10, 3, 4);

insert into lista_reproduccion(id_lista, nombre, duracion, contador, id_usuario, id_aaa)
values(1, "mi lista", '45.00', 8, 2, 2);
insert into lista_reproduccion(id_lista, nombre, duracion, contador, id_usuario, id_aaa)
values(2, "tu lista", '23.00', 18, 2, 1);
insert into lista_reproduccion(id_lista, nombre, duracion, contador, id_usuario, id_aaa)
values(3, "su lista", '43.00', 12, 5, 3);
insert into lista_reproduccion(id_lista, nombre, duracion, contador, id_usuario, id_aaa)
values(4, "nuestra lista", '12.00', 45, 6, 4);
insert into lista_reproduccion(id_lista, nombre, duracion, contador, id_usuario, id_aaa)
values(5, "para bañarse", '54.00', 34, 1, 3);
insert into lista_reproduccion(id_lista, nombre, duracion, contador, id_usuario, id_aaa)
values(6, "tareas", '34.00', 23, 4, 8);
insert into lista_reproduccion(id_lista, nombre, duracion, contador, id_usuario, id_aaa)
values(7, "ejercicios", '25.00', 23, 3, 10);
insert into lista_reproduccion(id_lista, nombre, duracion, contador, id_usuario, id_aaa)
values(8, "para dormir", '13.00', 25, 7, 9);
insert into lista_reproduccion(id_lista, nombre, duracion, contador, id_usuario, id_aaa)
values(9, "mañanera", '25.00', 5, 8, 7);
insert into lista_reproduccion(id_lista, nombre, duracion, contador, id_usuario, id_aaa)
values(10, "fiesta", '36.00', 18, 10, 5);
insert into lista_reproduccion(id_lista, nombre, duracion, contador, id_usuario, id_aaa)
values(11, "relax", '24.00', 18, 2, 6);
insert into lista_reproduccion(id_lista, nombre, duracion, contador, id_usuario, id_aaa)
values(12, "oclajoma", '27.00', 18, 2, 5);
insert into lista_reproduccion(id_lista, nombre, duracion, contador, id_usuario, id_aaa)
values(13, "virtual", '21.00', 18, 2, 3);
#----------------------------------------------------------CONSULTAS--------------------------------------------------------------------#
select count(nombre) as No_artistas from artista;

select artista.nombre, artista.nivel_fama, artista.edad as edad_componiendo, artista.sexo from artista
where artista.id_artista=id_artista and artista.id_artista=1;

select lista_reproduccion.id_usuario, count(asig_artista_album.id_artista) as No_artistas from asig_artista_album, lista_reproduccion
where lista_reproduccion.id_usuario=id_usuario and lista_reproduccion.id_aaa=asig_artista_album.id_artista and 
lista_reproduccion.id_usuario=2;

select lista_reproduccion.id_usuario, lista_reproduccion.nombre from lista_reproduccion
where lista_reproduccion.id_usuario=id_usuario and lista_reproduccion.id_usuario=2 order by nombre asc ;

select usuario.pais_usuario from usuario where usuario.pais_usuario;

select usuario.pais_usuario, count(pais_usuario) as Frecuente from usuario group by pais_usuario order by Frecuente desc;


