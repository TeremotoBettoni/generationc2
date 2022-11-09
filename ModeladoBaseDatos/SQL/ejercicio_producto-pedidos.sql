create table generationc2.productos(
	id int not null auto_increment,
	nombre varchar(100) not null,
	descripcion varchar(100) not null,
	primary key(id)
);

create table generationc2.pedidos(
	id int not null auto_increment,
	fecha date not null,
	monto int not null,
	cliente_id int,
	primary key(id)
);

-- en este caso en particuilar la relacion es n-n, asi que como hacemos esta relacion

-- tabla intermedia; pedidos_productos sera el nombre por buiena practica

create table pedidos_productos(
	id int primary key not null auto_increment,
	producto_id int not null,
	pedido_id int not null,
	FOREIGN KEY (producto_id) REFERENCES productos(id),
	FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);

-- insertamos valores a productos

insert into productos(nombre,descripcion)
value ("licor_manzana","licor sabor manzana marca patito"), 
("papas fritas","papas fritas 200 gr"), 
("pan de molde","pan de molde marca bimbo"),
("pack de cerbezas","pack de cerbezas escudo 6 unidades"),
("casata trisabor","casata con sabor vainilla,chocolate y fresas marca sabory"), 
("aceite vegetal","aceite vegetal marca cheff un litro");

-- ahora agregamos datos a pedidos teniendo en cuenta el formato de fecha, la cual puede incluir horas o no y el orden siempre es YYYY-MM-DD

insert into pedidos (fecha,monto)
value ('2022-11-09 00:00:00', 5000);

-- podemos hacer ingreso de pedidos_productos asi

insert into pedidos_productos (pedido_id, producto_id)
value (1,1), (1,1);

-- pero es mejor agregando unas columna de subtotal

alter table pedidos_productos
add cant_producto int, add subtotal int;

alter table productos
add valor_unitario int;


