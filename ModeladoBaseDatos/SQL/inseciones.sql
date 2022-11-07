-- insertar datos en tablas -- insert into nombre_tabla (nombre_col1, nombre_col2,...) values (valor1, valor2,...);

insert into directivos (nombre, apellido) values ("Maggy", "Fernandez");
insert into directivos (nombre, apellido) values ("Rafael", "Guerrero");
-- insertar m,as de 1 registro
insert into directivos (nombre, apellido) values ("Teresa", "Bettoni"),("Luis", "Mejias");

-- conmsultar un registro segun su id usando where (Filtar)
select *from directivos where id=4;

