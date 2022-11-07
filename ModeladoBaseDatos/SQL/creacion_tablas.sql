-- Crear tablas 
/*create table nombre_tabla(
	nombre_columna1 tipo_dato restricciones
	nombre_columna2 tipo_dato restricciones
	nombre_columna3 tipo_dato restricciones
);*/

CREATE TABLE generationc2.tecnicos (
	id INT NOT NULL,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT NULL
);

ALTER TABLE generationc2.tecnicos MODIFY COLUMN id int primary KEY auto_increment NOT NULL;

CREATE TABLE generationc2.DIRECTIVOS (
	id INT NOT null auto_increment,
	nombre varchar(100) NOT NULL,
	apellido varchar(100) NOT null,
	primary key (id)
);

-- describir tabla

describe estudiantes;

-- consultar los datos dentro de la tabla
select * from directivos;