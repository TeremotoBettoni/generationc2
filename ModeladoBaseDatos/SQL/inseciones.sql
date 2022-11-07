use generationc2;
-- insertar datos en tablas -- insert into nombre_tabla (nombre_col1, nombre_col2,...) values (valor1, valor2,...);



insert into directivos (nombre, apellido) values ("Maggy", "Fernandez");
insert into directivos (nombre, apellido) values ("Rafael", "Guerrero");
-- insertar m,as de 1 registro
insert into directivos (nombre, apellido) values ("Teresa", "Bettoni"),("Luis", "Mejias");
INSERT into directivos ( nombre, apellido) values ("Andres","Soto");
INSERT into directivos ( nombre, apellido) values ("Andres","Mito");

-- conmsultar un registro segun su id usando where (Filtar)
select * from directivos where id=4;
select * from directivos;


-- como modificar data
-- eliminar la datas 
DROP TABLE directivos; -- elimina la tabla

-- crear tabla directivo de nuevo
CREATE TABLE generationc2.directivos (
	id INT  NOT NULL auto_increment,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL,
	PRIMARY KEY (id)
);


-- eliminar el contenido de la tabla, NO la tabla
TRUNCATE table directivos;

-- modificar una data en una columna especifica
update nombre_tabla set nombre columna=el_nuevo_datp where condicion;

update directivos set nombre = "Maria" where id =3; -- ejecutamos y luego lo visualizamos con el visualizador de select
update directivos set nombre = "Maria"; -- where id =3 // importante tener cuidado si no le ponemos el where pues entonces modificara todos los datos

-- visualizar solo 1 columna de la tabla
select id, apellido from directivos;
select nombre, apellido from directivos;

-- alias para la visualizacion
select d.nombre as first_name, d.id as rut from directivos d;

-- FILTRAR
select d.id, d.nombre, d.apellido from directivos d where d.nombre = 'Teresa' and d.apellido = 'Bettoni' ; -- el where nos permite filtrar por uno de los datos y and para acregar mas especificaciones parta filtrar mejor
insert into directivos (nombre, apellido) values ("Teresa", "Ramos");

-- Filtar por parte de una palabra o numero, como en los buscadores de redes sociales CON LIKE COINCIDENCIA
select d.id, d.nombre, d.apellido 
from directivos d
where d.nombre LIKE 'an%'; -- o si se solo como termina la palabra lo coloco '%es'

select d.id, d.nombre, d.apellido 
from directivos d
where d.nombre LIKE '%e%' and d.apellido like '%e%'; -- esta es para todos los tipos de coincidencias, sin impoertar la ubucacion de la letra


-- crear tabla curso para ello
CREATE TABLE generationc2.curso (
	id INT  NOT NULL auto_increment,
	nombre varchar(100) NOT NULL,
	cant_alumnos INT NOT NULL,
	especialidad varchar(100),
	PRIMARY KEY (id)
);
-- agregamos los valores dentro de cursos
select * from curso;
insert into curso 
(nombre, cant_alumnos, especialidad) 
values ("Cohorte1", 30, "Java"),
("Cohorte2", 34, "Java"),
("Cohorte3", 35, "Java")
;
-- agregamos la FK a estudiente
-- 1.creacion de columna
alter table estudiantes 
add curso_id INT ;

-- 2.relacionamos las tablas ahora a travez de la FK
alter table estudiantes 
add foreign key(curso_id) references curso(id);

insert into estudiantes (nombre, apellido, curso_id) values ("Jhon", "Doe",1),
("Jaen", "Doe",2),
("Carlos", "Doe",2),
("Ayun","Doe",2),
("Zoe","Doe",3)
;
TRUNCATE table estudiantes;
TRUNCATE table directivos;
select * from estudiantes;







