-- crear tabla mascosas, con 4 columnas y 4 inserciones
CREATE TABLE generationc2.mascotas (
	id INT  NOT NULL auto_increment,
	tipo varchar(100) NOT NULL,
	nombre varchar(100) NOT NULL,
	sexo varchar(100) NOT NULL,
	PRIMARY KEY (id)
);

insert into mascotas (tipo, nombre, sexo) values ("perro", "pupi", "macho"),("perro", "gala", "hembra"),("gato", "neko", "hembra"),("conejo", "Alice", "hembra");

select * from mascotas;
