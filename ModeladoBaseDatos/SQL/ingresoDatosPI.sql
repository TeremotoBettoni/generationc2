-- primera prueba de ingreso de usuario

insert into usuario
(nombre,apellido,email,contraseña)
values
("Carlos","Ancapi","carlos@ancapi.com","12345"),
("Teresa", "Bettoni", "mtbettono@gmail.com", "Admin123*"),
('Ivan', 'Zapata', 'sonik.zapata@gmail.com', '1234'),
("Michel","Espinoza","mespinoza02@hotmail.com","1234")
;
------------------------------------------------------------------------
-- creamos ahora las categorias de posteo
insert into categoria 
(detalleCategoria)
values
("Matematica"),
("Ciencias"),
("Programación")
;

------------------------------------------------------------------------
-- creamos ahora los tipos de posteo
insert into typeposteo  
(tipo)
values
("Pregunta"),
("Publicacion")
;

------------------------------------------------------------------------
-- creamos ahora las valoraciones
insert into valoracion  
(megusta)
values
(1)
;

------------------------------------------------------------------------
-- ahora creamos 2 posteos

insert into posteos
(titulo,texto,url,idAutor,idCategoria,idTypePosteo,idValoracion)
values
("hola mundo","amasando","amasando.cl",1,1,1,1),
("chao mundo","bora","bora.cl",2,2,2,1)
;
truncate table posteos;

------------------------------------------------------------------------
-- consultamos los datos

select * from usuario u;

-- consultamos los posteos y quien los posteo

-- consulta los usuarios

select * from posteos p ;

select u.userId, u.nombre, u.apellido, p.posId, p.titulo, p.texto  
from posteos p2 
inner join posteos p 
on u.userId = p.idAutor;

-- consultamos ahora pero mas especifico 
select u.userId, u.nombre, u.apellido, p.posId, p.titulo, p.texto, c.detalleCategoria 
from usuario u 
inner join posteos p 
on u.userId = p.idAutor
inner join categoria c 
on c.categoriaId = p.idCategoria;





