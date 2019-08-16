/*CREATE TABLE empleado(
dni int,
nombre varchar(40),
apellido varchar(40),
genero char,
sueldo int,
PRIMARY KEY (dni)
)
*/

--insert into empleado (dni,nombre,apellido,genero,sueldo) values (25100000,'PEREZ','PABLO','M',18000)
--insert into empleado (dni,nombre,apellido,genero,sueldo) values (29332501,'SLOTOWIAZDA','MARIA','F',35000)
--insert into empleado (dni,nombre,apellido,genero,sueldo) values (19302500,'TENEMBAUN','ENRNESTO','M',22500)
--insert into empleado (dni,nombre,apellido,genero,sueldo) values (33001321,'RINEIRI','EVANGELINA','F',17000)
--insert into empleado (dni,nombre,apellido,genero,sueldo) values (22958543,'DIAZ','XIMENA', 'F',48000)
--insert into empleado (dni,nombre,apellido,genero,sueldo) values (35254310,'PEREZ LINDO','MATIAS','M',29000)
--insert into empleado (dni,nombre,apellido,genero,sueldo) values (33387695,'RICCA','JAVIER', 'M',29700)
--insert into empleado (dni,nombre,apellido,genero,sueldo) values (25321542,'SIGNORINI','ESTELA' ,'F',45000)
--insert into empleado (dni,nombre,apellido,genero,sueldo) values (27123456,'REZONICO','CONSTANZA' ,'F',31000)
--insert into empleado (dni,nombre,apellido,genero,sueldo) values (13334401,'RETAMAR','JOAQUIN' ,'F',35000)

/*CREATE TABLE departamento(
codigo int,
nombre varchar(30),
PRIMARY KEY (codigo)
)*/
--insert into departamento (codigo,nombre) values (1,'produccion')
--insert into departamento (codigo,nombre) values (2,'computo')
--insert into departamento (codigo,nombre) values (3,'ventas')
--insert into departamento (codigo,nombre) values (4,'deposito')

--delete from departamento where codigo = 3

/*CREATE TABLE trabajapara(
dni int,
codigo int,
horas int,
PRIMARY KEY (dni,codigo),
FOREIGN KEY (dni) references empleado,
FOREIGN KEY (codigo) references departamento
)*/

--insert into trabajapara (dni,codigo,horas) values (29332501,2,10)
--insert into trabajapara (dni,codigo,horas) values (19302500,1,8)
--insert into trabajapara (dni,codigo,horas) values (29332501,1,10)
--UPDATE empleado set genero = 'M'
--where dni = 13334401;
--SELECT * from empleado;
--SELECT * from empleado
	--where genero = 'M';

--Select max(sueldo), min (sueldo),avg(sueldo) from empleado;

--Select * from empleado
	--where sueldo>2000;

--select avg(sueldo)
	--from trabajapara;
--Select	
--CAST ((avg(sueldo)) as float) from empleado; -- cambiar tipo de variable
--select distinct dni from trabajapara -- quitar dni repetidos

--select distinct e.nombre, e.apellido, t.dni, t.codigo
--from trabajapara t, empleado e -- reconocer la tabla de otra manera
--where t.dni = e.dni; -- juntar 2 tablas 
--punto f
--select avg(sueldo) 
--from empleado e, departamento d, trabajapara t 
--where t.dni = e.dni and d.codigo = t.codigo and d.nombre = 'computo';  

--punto g
--select sum(horas)
--from trabajapara t, departamento d
--where d.nombre ='produccion' and t.codigo = d.codigo; 

--select e.nombre 
--from empleado e, departamento d, trabajapara t
--where d.nombre='deposito' and d.codigo = t.codigo and t.dni = e.dni and horas >= 6;

--select * from empleado
--where sueldo between 20000 and 32000;

--select * from empleado
--where  nombre like 'R%R';

--select * from empleado
--where sueldo> 10000
--order by (nombre,apellido) desc;

--insert into empleado (dni,nombre,apellido,genero,sueldo) values (13334401,'RETAMAR','JOA' ,'F',35000)

