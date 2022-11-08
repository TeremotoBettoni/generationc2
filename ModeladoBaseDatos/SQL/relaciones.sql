-- de que manera obtenemos los datos de tablas con FK
-- ejercicio 
/*
 * tabla direccion 
 * id, nombre, numero, ciudad
 * 
 * agregar a todas las tablas la relacion
 * 
 * 2 inserciones en la tabla
 * 
 * */

-- Creamos primero la tabla de direccion
CREATE TABLE generationc2.direccion (
	id INT  NOT NULL auto_increment,
	nombre varchar(100) NOT NULL,
	numero INT NOT NULL,
	ciudad varchar(100) NOT NULL,
	PRIMARY KEY (id)
);

select * from direccion;

-- insertamos las 2 direccione
insert into direccion 
(nombre, numero, ciudad) 
values ("Villaseca", 70, "Santiago"),
("Providencia", 1765, "Santiago")
;

-- agregamos la FK a tolas las tablas
-- 1.creacion de columna
alter table administrativos 
add direccionID INT;
alter table estudiantes  
add direccionID INT;
alter table profesores  
add direccionID INT;
alter table directivos  
add direccionID INT;

-- 2.relacionamos las tablas ahora a travez de la FK
alter table estudiantes 
add foreign key(direccionID) references direccion(id);
alter table administrativos 
add foreign key(direccionID) references direccion(id);
alter table profesores 
add foreign key(direccionID) references direccion(id);
alter table directivos 
add foreign key(direccionID) references direccion(id);

-- les asignamos ahora las direcciones
insert into estudiantes (nombre, apellido, direccionID) values ("Jhon", "Doe",1),
("Jaen", "Doe",1),
("Carlos", "Doe",2)
;

insert into administrativos (nombre, apellido, direccionID) values ("Jhon", "Doe",1),
("Ayun","Doe",1),
("Zoe","Doe",2)
;


insert into profesores (nombre, apellido, direccionID) values ("Jhon", "Doe",1),
("Jaen", "Doe",1),
("Carlos", "Doe",2)
;

insert into directivos (nombre, apellido, direccionID) values ("Jhon", "Doe",1),
("Ayun","Doe",1),
("Zoe","Doe",2)
;

-- imprimimos las tablas para visualizar que todo esta ok

select * from estudiantes;
select * from administrativos;
select * from profesores;
select * from directivos;
