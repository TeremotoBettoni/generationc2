-- insertar pokemones

-- relacionamos con FK

alter table pokemonKanto primary key (pokedex);

ALTER TABLE mis_pokemones 
ADD constraint fk__pokemonKanto_id FOREIGN KEY(pokedex) REFERENCES pokemonesKanto(pokedex);



-- Ahora inspeccionamos las tablas
select * from mis_pokemones mp ;
select * from pokemoneskanto p ;

------------------------------------------------------------------------------------------------
-- SQL Joint,
 
select * from pokemoneskanto p  
inner join mis_pokemones mp  
on p.pokedex = mp.id ;

-- otro ejemplo es filtrar

select * from pokemoneskanto p  
inner join mis_pokemones mp  
on p.pokedex = mp.id
where p.pokedex = 1;

-- otro ejemplo para filtrar
select mp.id, mp.fecha_captura, mp.lugar, p.nombre  
from pokemoneskanto p  
inner join mis_pokemones mp  
on p.pokedex = mp.id
where p.pokedex = 2;

------------------------------------------------------------------------------------------------
-- ahora con left

select *
from pokemoneskanto p  
left join mis_pokemones mp  
on p.pokedex = mp.id;

------------------------------------------------------------------------------------------------
-- ahora con right

select *
from pokemoneskanto p  
right join mis_pokemones mp  
on p.pokedex = mp.id;

------------------------------------------------------------------------------------------------
-- ahora los full outer join se cambia por 2 subconsultas desde MySQL 5

select *  
from pokemoneskanto p   
left join mis_pokemones mp  
on p.pokedex = mp.id
union all 
select *  
from pokemoneskanto p   
right join mis_pokemones mp  
on p.pokedex = mp.id;


------------------------------------------------------------------------------------------------
-- filtrar todos los pokemones 	que tengan la habilidad e fuego como principal Tipo 1= fuego

select p.nombre from  mis_pokemones mp  
inner join pokemoneskanto p 
on p.pokedex = mp.id
where p.tipo1 = "fuego";

------------------------------------------------------------------------------------------------
-- todos los pokemones de tipoi veneno en tipo 1 y 2

select * from  mis_pokemones mp  
inner join pokemoneskanto p 
on p.pokedex = mp.id
where p.tipo1 = "veneno"
and p.tipo2 = "veneno";

------------------------------------------------------------------------------------------------
-- cuantos charmander tengo

select * from  mis_pokemones mp  
inner join pokemoneskanto p 
on p.pokedex = mp.id
where p.nombre = "charmander";

------------------------------------------------------------------------------------------------
-- charizard
select * from  mis_pokemones mp  
inner join pokemoneskanto p 
on p.pokedex = mp.id
where p.nombre = "charizard";

select * from  mis_pokemones mp  
inner join pokemoneskanto p 
on p.pokedex = mp.id
where p.nombre like  "char%";

------------------------------------------------------------------------------------------------
-- cuantos de tipo agua esisten en 
select * from  pokemoneskanto p 
where p.tipo1 = "agua";

------------------------------------------------------------------------------------------------
-- cuantos poquemones capoture en estacion central
select * from  mis_pokemones mp  
inner join pokemoneskanto p 
on p.pokedex = mp.id
where mp.lugar = "Estacion Central";

-- todos los poqkenmones que cacture en el lugar que inicia con san

select * from  mis_pokemones mp  
inner join pokemoneskanto p 
on p.pokedex = mp.id
where mp.lugar like "san%";

------------------------------------------------------------------------------------------------
-- ahora solo aparesca el tipo de pokemon que es 
select p.tipo1, p.tipo2  from  mis_pokemones mp  
inner join pokemoneskanto p 
on p.pokedex = mp.id
where mp.lugar like "san%";

------------------------------------------------------------------------------------------------
-- los que nop tienen tipo 2
select p.nombre, p.tipo1, p.tipo2  
from  mis_pokemones mp  
inner join pokemoneskanto p 
on p.pokedex = mp.id
where p.tipo2 = "" ;

------------------------------------------------------------------------------------------------


