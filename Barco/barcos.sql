-- Ejercio 1 ¿Qué modelos de PC tienen una velocidad de al menos 150?
--select f.cod from producto f, pc p
--where (f.cod=p.cod) and (p.veloc >=150);

--ejercicio 2 ¿Qué fabricantes hacen laptops con un disco duro de al menos un gigabyte?
--select distinct f.cod from laptop p, producto f
--where (f.cod=p.cod) and (p.hd>= 1);

--Ejercicio 3 Hallar el número de modelo y el precio de todos los productos (de cualquier tipo) hechos por el fabricante B. 

select f.cod p.precio from produco p 

