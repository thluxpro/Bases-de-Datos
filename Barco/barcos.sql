-- Ejercio 1 ¿Qué modelos de PC tienen una velocidad de al menos 150?
--select f.cod from producto f, pc p
--where (f.cod=p.cod) and (p.veloc >=150);

--ejercicio 2 ¿Qué fabricantes hacen laptops con un disco duro de al menos un gigabyte?
--select distinct f.cod from laptop p, producto f
--where (f.cod=p.cod) and (p.hd>= 1);

--Ejercicio 3 Hallar el número de modelo y el precio de todos los productos (de cualquier tipo) hechos por el fabricante B. 
/*
select p.cod,f.precio from producto p inner join pc f  on (f.cod = p.cod) and (p.fabricante = 'B') UNION
Select p.cod,l.precio from producto p inner join laptop l on (l.cod = p.cod) and (p.fabricante = 'B') UNION
select p.cod,i.precio from producto p inner join impresora i on (p.cod = i.cod) and (p.fabricante = 'B')
*/
--Ejercicio 4 Hallar el número de modelo de todas las impresoras color
--select p.cod, i.precio from producto p inner join impresora i on (p.cod = i.cod) and (i.color = true)

--Ejercicio 5  Hallar los fabricantes que venden laptops pero no PCs.
--select p.fabricante,p.tipo from producto p inner join laptop f on (p.cod = f.cod) and (p.tipo= 'Laptop') except
--select p.fabricante,p.tipo from producto p inner join pc f on (p.cod = f.cod) and (p.tipo = 'Pc')

--Ejercicio 6 Hallar aquellos tamaños de discos que ocurren en dos o más PCs.
/*Select count(cod),hd from pc
Group by hd
having count(*) > 1;
*/
--Ejercicio 7 Hallar pares de modelos de PC tales que ambos posean la misma velocidad y RAM. Un par debe ser listado una sola vez: (i,j) pero no (j,i)
 
--Ejercicio 8 Hallar aquellos fabricantes que ofrezcan computadoras (sean PC o laptop) con velocidades de al menos 133.
--select p.fabricante,p.tipo,f.veloc from producto p inner join pc f on(p.cod=f.cod) and (f.veloc>=133) UNION
--select p.fabricante, p.tipo,l.veloc from producto p inner join laptop l on(p.cod=l.cod) and (l.veloc>=133);

--Ejercicio 9 hallar los fabricantes de la computadora (PC o laptop) con la máxima velocidad disponible.
Select max(f.veloc) from producto p inner join pc f on (p.cod=f.cod) union
Select max(l.veloc) from producto p inner join laptop l on (p.cod=l.cod);
