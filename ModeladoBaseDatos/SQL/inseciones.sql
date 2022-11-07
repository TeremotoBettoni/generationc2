use generationc2;
-- insertar datos en tablas -- insert into nombre_tabla (nombre_col1, nombre_col2,...) values (valor1, valor2,...);



insert into directivos (nombre, apellido) values ("Maggy", "Fernandez");
insert into directivos (nombre, apellido) values ("Rafael", "Guerrero");
-- insertar m,as de 1 registro
insert into directivos (nombre, apellido) values ("Teresa", "Bettoni"),("Luis", "Mejias");

-- conmsultar un registro segun su id usando where (Filtar)
select * from directivos where id=4;
select * from directivos;


-- como modificar data
-- eliminar la datas 
--DROP TABLE directivos; -- elimina la tabla

-- crear tabla directivo de nuevo
CREATE TABLE generationc2.directivos (
	id INT  NOT NULL auto_increment,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL,
	PRIMARY KEY (id)
);


--eliminar el contenido de la tabla, no la tabla
truncate table directivos;

-- modificar una data en una columna especifica
update nombre_tabla set nombre columna=el_nuevo_datp where condicion;

update directivos set nombre = "Maria" where id =3; -- ejecutamos y luego lo visualizamos con el visualizador de select
update directivos set nombre = "Maria"; -- where id =3 // importante tener cuidado si no le ponemos el where pues entonces modificara todos los datos


