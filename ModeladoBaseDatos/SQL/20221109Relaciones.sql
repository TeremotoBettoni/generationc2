-- relaciones 
------------------------------------------------------------------------------------------------
-- creamos las tablas
create table proveedores(
	id int primary key not null auto_increment,
	nombre varchar(100) not null,
	rut varchar(50) not null
);

create table direcciones (
	id int primary key not null auto_increment,
	calle varchar(100) not null,
	numero int not null,
	secto_comuna varchar(100) not null,
	ciudad varchar(100) not null,
	region varchar(100) not null,
	codigo_postal int,
	proveedor_id int not null
);
------------------------------------------------------------------------------------------------
-- creamos la foreign key con constraunt  para agregarle un nombre a la relacion
alter table direcciones add constraint fk_proveedor_id foreign key (proveedor_id) references proveedores(id);
------------------------------------------------------------------------------------------------
-- insertamos los datos para las 2 tablas
insert into proveedores (nombre, rut) values ("3M", "77777777-7"),("Generation", "20111111-1"),("Inacap", "14111222-3");

insert into direcciones (calle, numero, secto_comuna, ciudad, region, codigo_postal, proveedor_id) 
values ("Villaseca", 70, "ñuñoa", "Santiago", "Metropolitana", "750000",1),
("Pedro de Valdivia", 35, "ñuñoa", "Santiago", "Metropolitana", "750000",2),
("Simon Bolivar", 66, "ñuñoa", "Santiago", "Metropolitana", "750000",3);

-- ahora insertas otra direccion al mismo proveedor 1 en este caso
insert into direcciones (calle, numero, secto_comuna, ciudad, region, codigo_postal, proveedor_id) 
values("Pedro de Valdivia", 150, "Providencia", "Santiago", "Metropolitana", "750000",1);

------------------------------------------------------------------------------------------------
-- Insertamos en proveedores una que no posea direccion

insert into proveedores (nombre, rut) values ("Lider", "20756423-4");

select * from proveedores;
select * from direcciones;
------------------------------------------------------------------------------------------------
-- SQL Joint, el join es para encontrar registros en comun entre 2 o mas tablas
-- con esta query podemos ver toda la tabla A y B pero como 16 registros porque en este caso es 4 direcciones X 4 proveedores (4x4)
select * from proveedores p 
inner join direcciones d ;

-- asi que hay que filtrar, donde en on decimos que id de proveedores sera igual a al provedor_id de direccion
-- asi como podemos agregar tambein un where que lo quer hace es filtara 
select * from proveedores p 
inner join direcciones d 
on p.id = d.proveedor_id 
where p.id = 1;
-- otro ejemplo es filtrar entre el select y from con el d. o p. para visualizar solo las direcciones o los proveedores
select d.* from proveedores p 
inner join direcciones d 
on p.id = d.proveedor_id 
where p.id = 1;

-- otro ejemplo para filtrar
select d.id, d.calle, d.numero, p.nombre  
from proveedores p 
inner join direcciones d 
on p.id = d.proveedor_id 
where d.id = 1;

------------------------------------------------------------------------------------------------
-- ahora, que hacemos si queremos ver todos los proveedores tengan direccion o no, o al menos todos los de la tabla A sin importar las asignaciones de B

select * -- d.id, d.calle, d.numero, p.nombre  
from proveedores p 
left join direcciones d 
on p.id = d.proveedor_id;

------------------------------------------------------------------------------------------------
-- ahora, si nos vamos a la derecha, o right, el selec considera todos los de la lista A a la que le asignadon una direccion segun proveedor_id

select *  
from proveedores p 
right join direcciones d 
on p.id = d.proveedor_id;

------------------------------------------------------------------------------------------------
-- ahora, steniendo en cuenta lo antertior, los full outer join

select *  
from proveedores p 
full outer join direcciones d 
on p.id = d.proveedor_id;

