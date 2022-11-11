-- Evaluación SQL

--------------------------------------------------------------------------------------
-- primero considerando que son distintos tipos de productos creamos una tablas que desgloce cada tipo

create table evaluacion.tipoProducto(
	id int primary key not null auto_increment,
	tipo varchar(100) not null
);

-- ahora creamos la tabla de productos y que este relacionada con tipo

create table evaluacion.productos(
	idprod int primary key not null auto_increment,
	nombre varchar(100) not null,
	tipo_id int not null,
	FOREIGN KEY (tipo_id) REFERENCES tipoProducto(id)
);

-- ahora teniendo en cuenta que estos productos dependen de un proveedor creamos una tabla de proveedores relacionada con producto y tipo producto

create table evaluacion.proveedores(
	idprov int primary key not null auto_increment,
	nombre varchar(100) not null,
	rut varchar(100) not null,
	produc_id int not null,
	prodtip_id int not null,
	FOREIGN KEY (produc_id) REFERENCES productos(idprod),
	FOREIGN KEY (prodtip_id) REFERENCES tipoProducto(id)
);

-- tomando en cuenta que se requiere conocer las ganacias creamos una tablas aparte para precios la cual estara relacionada con productos y proveedores

create table evaluacion.precio(
	idprecio int primary key not null auto_increment,
	precioCompra int not null,
	precioVenta int not null,
	produc_id int not null,
	proved_id int not null,
	FOREIGN KEY (produc_id) REFERENCES productos(idprod),
	FOREIGN KEY (proved_id) REFERENCES proveedores(idprov)
);

--------------------------------------------------------------------------------------

-- ahora ingresamos los valores a las tablas
-- ingresomos el tipoProducto al menos 4 tipos de productos.

insert into tipoProducto (tipo) values ("Frutas"), ("Verduras"), ("Lacteos"), ("Granos"), ("Dulces");

-- ingresamos los productos con al menos 5 productos considerando el especificar el tipo de producto que es.

insert into productos (nombre, tipo_id) values ("Manzana",1), ("Pera",1), ("Zanahoria",2), ("Cebolla",2), 
("Leche",3), ("Queso",3), ("Frijoles",4), ("Arroz",4), ("Caramelos",5), ("Regalis",5);

-- asigmos ahora los proveedores 

insert into proveedores (nombre, rut, produc_id, prodtip_id) values ("Don Frutero","17777777-7",1,1), ("La Vega","15555555-5",3,2), 
("TemucoLac","13333333-3",5,3), ("El Frijolito","12222222-2",7,4), ("Nestle","11111111-1",9,5);

-- y por ultimo asignamos los precios de compra y venta de productos segun su proveedor

insert into precio (precioCompra, precioVenta, produc_id, proved_id) 
values (500,600,1,1), (600,800,3,2), (500,700,5,3) , (700,800,7,4), (750,900,9,5);


--------------------------------------------------------------------------------------
-- Ahora generamos las consultas con SQL Join
 
select * from tipoproducto t  
inner join productos p  
on t.id  = p.tipo_id ;

-- otro ejemplo filtrando un poco mas con where

select * from tipoproducto t  
inner join productos p  
on t.id  = p.tipo_id
where p.tipo_id = 1;

-- ahora filtramos un poco mas para ver el nombre de producto, proveedor y precios

select p.nombre, p3.nombre, p2.precioCompra, p2.precioVenta 
from productos p  
inner join proveedores p3  
on p.idprod = p3.produc_id 
inner join precio p2  
on p.idprod = p2.produc_id;


