create database reproductor_musical;
use reproductor_musical;

delimiter $$
create procedure tabla_pago()
begin
create table tipo_pago(
id_tipo_pago integer not null,
nombre varchar(50),
primary key(id_tipo_pago)
);
end$$
delimiter ;
call tabla_pago();

delimiter $$
create procedure tabla_plan()
begin
create table tipo_plan(
id_tipo_plan integer not null,
tipo_plan varchar(50),
precio decimal,
duracion varchar(50),
primary key (id_tipo_plan)
);
end$$
delimiter ;
call tabla_plan();

delimiter $$
create procedure tabla_usuario()
begin
create table usuario(
id_usuario integer not null,
nombre_usuario varchar(50),
fecha_nac date,
pais_usuario varchar(50),
correo_usuario varchar(50),
contraseña_usuario varchar(50),
primary key (id_usuario)
);
end$$
delimiter ;
call tabla_usuario();

delimiter $$
create procedure tablaCuenta()
begin
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
end$$
delimiter ;
call tablaCuenta();

delimiter $$
create procedure tablaArtista()
begin
create table artista(
id_artista integer not null,
nombre varchar(50),
nivel_fama varchar(50),
edad integer,
sexo varchar(50),
primary key (id_artista)
);
end$$
delimiter ;
call tablaArtista();

delimiter $$
create procedure tablaAlbumes()
begin
create table albumes(
id_albumes integer not null,
nombre varchar(50),
no_canciones integer,
duracion decimal,
primary key(id_albumes)
);
end$$
delimiter ;
call tablaAlbumes();

delimiter $$
create procedure tablaSencillo()
begin
create table sencillo(
id_sencillo integer not null,
nombre varchar(50),
duracion decimal(50),
primary key(id_sencillo)
);
end$$
delimiter ;
call tablaSencillo();

delimiter $$
create procedure tablaGenero()
begin
create table genero(
id_genero integer not null,
nombre varchar(50),
primary key(id_genero)
);
end$$
delimiter ;
call tablaGenero();

delimiter $$
create procedure tablaAsigArtistaAlbum()
begin
create table asig_artista_album(
id_aaa integer not null,
id_artista integer,
id_albumes integer,
primary key(id_aaa),
foreign key(id_artista)references artista(id_artista),
foreign key(id_albumes)references albumes(id_albumes)
);
end$$
delimiter ;
call tablaAsigArtistaAlbum();

delimiter $$
create procedure tablaAsigAlbumGenero()
begin
create table asig_album_genero(
id_aag integer not null,
id_albumes integer,
id_genero integer,
primary key(id_aag),
foreign key(id_albumes)references albumes(id_albumes),
foreign key(id_genero)references genero(id_genero)
);
end$$
delimiter ;
call tablaAsigAlbumGenero();

delimiter $$
create procedure tablaListaReproduccion()
begin
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
end$$
delimiter ;
call tablaListaReproduccion();

delimiter $$
create procedure insertarDatosPago(id_tipo_pago int, nombre varchar(50))
begin
insert into tipo_pago values (id_tipo_pago, nombre);
end$$
delimiter ;
call insertarDatospago(1, "pay-pal");
call insertarDatospago(2, 'tarjeta credito');
call insertarDatospago(3, 'tarjeta debito');
call insertarDatospago(4, 'tarjeta de regalo');

delimiter $$
create procedure insertarDatosPlan(id_tipo_plan int, tipo_plan varchar(50), precio decimal, duracion decimal)
begin
insert into tipo_plan values (id_tipo_plan, tipo_plan, precio, duracion);
end$$
delimiter ;
call insertarDatosPlan(1, "gratuito", '00.00', '00.00');
call insertarDatosPlan(2, "plateado", '05.99', '03.00');
call insertarDatosPlan(3, "oro", '9.99', '6.00');
call insertarDatosPlan(4, "diamante", '15.99', '12.00');

delimiter $$
create procedure insertarDatosUsuario(id_usuario int, nombre_usuario varchar(50), fecha_nac date, pais_usuario varchar(50), correo_usuario varchar(50), contraseña_usuario varchar(50))
begin
insert into Usuario values (id_usuario, nombre_usuario, fecha_nac, pais_usuario, correo_usuario, contraseña_usuario);
end$$
delimiter ;
call insertarDatosUsuario(1, "Moises", '2005-01-11', "Guatemala", "moises@gmail.com", "local");
call insertarDatosUsuario(2, "Alberto", '2005-12-23', "Costa Rica", "Alberto@gmail.com", "sabado");
call insertarDatosUsuario(3, "Gerardo", '2005-11-21', "Panama", "Gerardo@gmail.com", "domingo");
call insertarDatosUsuario(4, "Josue", '2005-08-23', "El Salvador", "Josue@gmail.com", "Martes");
call insertarDatosUsuario(5, "Benjamin", '2005-06-15', "Honduras", "Benjamin@gmail.com", "Miercoles");
call insertarDatosUsuario(6, "Jose", '2005-01-2', "Venezuela", "Jose@gmail.com", "Jueves");
call insertarDatosUsuario(7, "Fernanda", '2005-05-25', "Holanda", "Fernanda@gmail.com", "Lunes");
call insertarDatosUsuario(8, "Jorge", '2005-12-18', "Canada", "jorge@gmail.com", "rancho");
call insertarDatosUsuario(9, "Gloria", '2005-04-13', "Israel", "gloria@gmail.com", "lunes");
call insertarDatosUsuario(10, "Carlos", '2005-10-19', "Peru", "carlos@gmail.com", "municipal");
call insertarDatosUsuario(11, "Carmen", '2005-11-11', "Guatemala", "carmen@gmail.com", "certificado");
call insertarDatosUsuario(12, "Ochoa", '2005-03-21', "Guatemala", "Ochoa@gmail.com", "panajachel");
call insertarDatosUsuario(13, "Pablo", '2005-10-31', "Guatemala", "Pablo@gmail.com", "rojosycremas");

delimiter $$
create procedure insertarDatosCuenta(id_cuenta int, id_usuario int, id_tipo_pago int, id_tipo_plan int )
begin
insert into cuenta values (id_cuenta, id_usuario, id_tipo_pago, id_tipo_plan);
end$$
delimiter ;
call insertarDatosCuenta(1,1,2,2);
call insertarDatosCuenta(2,2,1,1);
call insertarDatosCuenta(3,3,3,3);
call insertarDatosCuenta(4,4,4,4);
call insertarDatosCuenta(5,5,3,4);
call insertarDatosCuenta(6,6,1,2);
call insertarDatosCuenta(7,7,2,1);
call insertarDatosCuenta(8,8,1,1);
call insertarDatosCuenta(9,9,4,1);
call insertarDatosCuenta(10,10,2,3);

delimiter $$
create procedure insertarDatosArtista(id_artista int, nombre varchar(50), nivel_fama varchar(50), edad int, sexo varchar(50))
begin
insert into artista values (id_artista, nombre, nivel_fama, edad, sexo);
end$$
delimiter ;
call insertarDatosArtista(1,"Ed Maverick", "alto", 25, "M");
call insertarDatosArtista(2,"Gorillaz", "alto", 15, " ");
call insertarDatosArtista(3,"zeballos", "medio", 10, "M");
call insertarDatosArtista(4,"Jay Oc", "media", 5, "M");
call insertarDatosArtista(5,"Sarah Cothran", "medio", 3, "F");
call insertarDatosArtista(6,"Billy Eilish", "alto", 4, "F");
call insertarDatosArtista(7,"Twenty one pilots", "alto", 10, " ");

delimiter $$
create procedure insertarDatosAlbumes(id_albumes int, nombre varchar(50), no_canciones int, duracion decimal )
begin
insert into albumes values (id_albumes, nombre, no_canciones, duracion);
end$$
delimiter ;
call insertarDatosAlbumes(1, "after hours", 15, '30.56');
call insertarDatosAlbumes(2, "Ugly is beautiful", 12, '23.56');
call insertarDatosAlbumes(3, "amnesia", 16, '23.26');
call insertarDatosAlbumes(4, "alter ego", 25, '34.36');
call insertarDatosAlbumes(5, "yesterday and today", 5, '12.67');
call insertarDatosAlbumes(6, "after monday", 25, '45.87');
call insertarDatosAlbumes(7, "look my heart", 18, '32.23');
call insertarDatosAlbumes(8, "my dog is my friend", 23, '21.12');
call insertarDatosAlbumes(9, "yes or no", 43, '45.67');
call insertarDatosAlbumes(10, "california", 11, '38.38');

delimiter $$
create procedure insertarDatosSencillo(id_sencillo int, nombre varchar(50), duracion decimal)
begin
insert into sencillo values (id_sencillo, nombre, duracion);
end$$
delimiter ;
call insertarDatosSencillo(1, "viernes", '03.00');
call insertarDatosSencillo(2, "oasis", '05.00');
call insertarDatosSencillo(3, "gone gone gone", '03.00');
call insertarDatosSencillo(4, "freaks", '2.00');
call insertarDatosSencillo(5, "locura", '4.00');
call insertarDatosSencillo(6, "anestecia", '5.00');
call insertarDatosSencillo(7, "U", '1.00');
call insertarDatosSencillo(8, "prejuicios", '4.00');
call insertarDatosSencillo(9, "home", '3.00');
call insertarDatosSencillo(10, "life goes on", '1.00');

delimiter $$
create procedure insertarDatosGenero(id_genero int, nombre varchar(50))
begin
insert into genero values (id_genero, nombre);
end$$
delimiter ;
call insertarDatosGenero(1, "rap");
call insertarDatosGenero(2, "clasica");
call insertarDatosGenero(3, "jazz");
call insertarDatosGenero(4, "80s");

delimiter $$
create procedure insertarDatosAAA(id_aaa int, id_artista int, id_albumes int)
begin
insert into asig_artista_album values (id_aaa, id_artista, id_albumes);
end$$
delimiter ;
call insertarDatosAAA(1, 2, 2);
call insertarDatosAAA(2, 4, 2);
call insertarDatosAAA(3, 3, 5);
call insertarDatosAAA(4, 2, 7);
call insertarDatosAAA(5, 2, 3);
call insertarDatosAAA(6, 1, 1);
call insertarDatosAAA(7, 5, 3);
call insertarDatosAAA(8, 6, 4);
call insertarDatosAAA(9, 7, 7);
call insertarDatosAAA(10, 5, 10);

delimiter $$
create procedure insertarDatosAAG(id_aag int, id_albumes int, id_genero int )
begin
insert into asig_album_genero values (id_aag, id_albumes, id_genero);
end$$
delimiter ;
call insertarDatosAAG(1, 1, 1);
call insertarDatosAAG(2, 3, 2);
call insertarDatosAAG(3, 4, 3);
call insertarDatosAAG(4, 2, 4);
call insertarDatosAAG(5, 10, 3);
call insertarDatosAAG(6, 10, 3);
call insertarDatosAAG(7, 2, 2);
call insertarDatosAAG(8, 6, 2);
call insertarDatosAAG(9, 8, 1);
call insertarDatosAAG(10, 3, 4);

delimiter $$
create procedure insertarDatosListaReproduccion(id_lista int, nombre varchar(50), duracion decimal, contador int, id_usuario int, id_aaa int)
begin
insert into lista_reproduccion values (id_lista, nombre, duracion, contador, id_usuario, id_aaa);
end$$
delimiter ;
call insertarDatosListaReproduccion(1, "mi lista", '45.00', 8, 2, 2);
call insertarDatosListaReproduccion(2, "tu lista", '23.00', 18, 2, 1);
call insertarDatosListaReproduccion(3, "su lista", '43.00', 12, 5, 3);
call insertarDatosListaReproduccion(4, "nuestra lista", '12.00', 45, 6, 4);
call insertarDatosListaReproduccion(5, "para bañarse", '54.00', 34, 1, 3);
call insertarDatosListaReproduccion(6, "tareas", '34.00', 23, 4, 8);
call insertarDatosListaReproduccion(7, "ejercicios", '25.00', 23, 3, 10);
call insertarDatosListaReproduccion(8, "para dormir", '13.00', 25, 7, 9);
call insertarDatosListaReproduccion(9, "mañanera", '25.00', 5, 8, 7);
call insertarDatosListaReproduccion(10, "fiesta", '36.00', 18, 10, 5);
call insertarDatosListaReproduccion(11, "relax", '24.00', 18, 2, 6);
call insertarDatosListaReproduccion(12, "oclajoma", '27.00', 18, 2, 5);
call insertarDatosListaReproduccion(13, "virtual", '21.00', 18, 2, 3);

#------------------------------------------------------CONSULTAS---------------------------------------------------------#

delimiter $$
create procedure tablaConsulta1()
begin
select count(nombre) as No_artistas from artista;
end$$
delimiter ;
call tablaConsulta1();

delimiter $$
create procedure tablaConsulta2()
begin
select artista.nombre, artista.nivel_fama, artista.edad as edad_componiendo, artista.sexo from artista
where artista.id_artista=id_artista and artista.id_artista=1;
end$$
delimiter ;
call tablaConsulta2();

delimiter $$
create procedure tablaConsulta3()
begin
select lista_reproduccion.id_usuario, count(asig_artista_album.id_artista) as No_artistas from asig_artista_album, lista_reproduccion
where lista_reproduccion.id_usuario=id_usuario and lista_reproduccion.id_aaa=asig_artista_album.id_artista and 
lista_reproduccion.id_usuario=2;
end$$
delimiter ;
call tablaConsulta3();

delimiter $$
create procedure tablaConsulta4()
begin
select lista_reproduccion.id_usuario, lista_reproduccion.nombre from lista_reproduccion
where lista_reproduccion.id_usuario=id_usuario and lista_reproduccion.id_usuario=2 order by nombre asc ;
end$$
delimiter ;
call tablaConsulta4();

delimiter $$
create procedure tablaConsulta5()
begin
select usuario.pais_usuario, count(pais_usuario) as Frecuente from usuario group by pais_usuario order by Frecuente desc;
end$$
delimiter ;
call tablaConsulta5();
