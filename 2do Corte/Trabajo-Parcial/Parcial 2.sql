
create table LIBRO(
idlibro integer primary key,
titulo text,
editorial text,
area text);

create table AUTOR(
idautor integer primary key,
nombre text,
nacionalidad text);

create table LIBAUT(
idautor integer,
idlibro integer,
primary key(idautor,idlibro),
foreign key(idautor) references AUTOR(idautor),
foreign key(idlibro) references LIBRO(idlibro)
);

create table ESTUDIANTE(
idlector integer primary key,
cedula integer,
nombre text,
dirección text,
carrera text,
edad integer);

create table PRESTAMO(
idlector integer,
idlibro integer,
fechapres date,
fechadevo date,
devuelto integer,
primary key(idlector,idlibro,fechapres),
foreign key(idlector) references ESTUDIANTE(idlector),
foreign key(idlibro) references LIBRO(idlibro));


insert into LIBRO
values(1,'La sombra del viento','Planeta','Romance gótico'),
(2,'Carmilla','Blanco&Negro','Ficción especulativa'),
(3,'Frankenstein o el moderno Prometeo','Panamericana','ficción gótica'),
(4,'EL Retrato de Dorian Gray','Panamericana','Novela gótica');


insert into AUTOR
values(1,'Carlos ruiz Zafón','España'),
(2,'Sheridan Le Fanu','Reino unido'),
(3,'Mary Shelley','Reino unido'),
(4,'Oscar Wilde','Reino unido');


insert into LIBAUT
values(1,1),
(2,2),
(3,3),
(4,4);


insert into ESTUDIANTE
values
(1,001,'Anthanas Mockus','dir1','carrera 1',70),
(2,002,'Gustavo Petro','dir2','carrera 2',62),
(3,003,'Federico Gutierrez','dir2','carrera 3',47),
(4,004,'Rodolfo Hernandez','dir2','carrera 4',77),
(5,004,'Ingrid Betancur','dir2','carrera 5',60);


INSERT INTO PRESTAMO
VALUES 
		(1, 3, '2/4/22','5/1/23', 1),
		(2, 3, '3/4/22','6/1/23', 1),
		(3, 3, '4/4/22','7/1/23', 1),
		(4, 3, '5/4/22','8/1/23', 1),
		(5, 3, '6/4/22','9/1/23', 1),
		(1, 3, '7/4/22','10/1/23', 1),
		(2, 3, '8/4/22','11/1/23', 0),
		(3, 3, '9/4/22','12/1/23', 1),
		(4, 3, '10/4/22','13/1/23', 0),
		(5, 3, '11/4/22','14/1/23', 1),
		(1, 3, '12/4/22','15/1/23', 1),
		(2, 3, '13/4/22','16/1/23', 0),
		(3, 3, '14/4/22','17/1/23', 1),
		(4, 3, '15/4/22','18/1/23', 0),
		(5, 3, '16/4/22','19/1/23', 1),
		(1, 3, '17/4/22','20/1/23', 1),
		(2, 3, '18/4/22','21/1/23', 0),
		(3, 3, '19/4/22','22/1/23', 1),
		(4, 3, '20/4/22','23/1/23', 0),
		(5, 3, '21/4/22','24/1/23', 1),
		(1, 3, '22/4/22','25/1/23', 1),
		(2, 3, '23/4/22','26/1/23', 0),
		(3, 3, '24/4/22','27/1/23', 1),
		(4, 3, '25/4/22','28/1/23', 0),
		(5, 3, '26/4/22','29/1/23', 1),
		(1, 3, '27/4/22','30/1/23', 1),
		(2, 3, '28/4/22','31/1/23', 0),
		(3, 3, '29/4/22','1/2/23', 1),
		(4, 3, '30/4/22','2/2/23', 0),
		(5, 3, '1/9/22','3/2/23', 1),
		(1, 3, '1/5/22','4/2/23', 1),
		(2, 3, '2/5/22','5/2/23', 0),
		(3, 3, '3/5/22','6/2/23', 1),
		(4, 3, '5/5/22','7/2/23', 0),
		(5, 3, '6/5/22','8/2/23', 1),
		(1, 3, '7/5/22','9/2/23', 1),
		(2, 3, '8/5/22','10/2/23', 0),
		(3, 3, '9/5/22','11/2/23', 1),
		(4, 3, '10/5/22','12/2/23', 0),
		(5, 3, '11/5/22','13/2/23', 1),
		(1, 3, '12/5/22','14/2/23', 1),
		(2, 3, '13/5/22','15/2/23', 0),
		(3, 3, '14/5/22','16/2/23', 1),
		(4, 3, '15/5/22','17/2/23', 0),
		(5, 3, '16/5/22','18/2/23', 1),
		(1, 3, '17/5/22','19/2/23', 1),
		(2, 3, '18/5/22','20/2/23', 0),
		(3, 3, '19/5/22','21/2/23', 1),
		(4, 3, '20/5/22','22/2/23', 0),
		(5, 3, '21/5/22','23/2/23', 1),
		(1, 3, '22/5/22','24/2/23', 1),
		(2, 3, '23/5/22','25/2/23', 0),
		(3, 3, '24/5/22','26/2/23', 1),
		(4, 3, '25/5/22','27/2/23', 0),
		(5, 3, '26/5/22','28/2/23', 1),
		(1, 2, '27/5/22','1/12/23', 1),
		(2, 2, '28/5/22','23/12/23', 0),
		(3, 1, '29/5/22','1/12/23', 1),
		(4, 1, '30/5/22','1/3/23', 0),
		(5, 1, '31/5/22','2/2/23', 1),
		(1, 2, '1/7/22','1/12/23', 1),
		(2, 2, '2/7/22','23/12/23', 0),
		(3, 1, '3/7/22','1/12/23', 1),
		(1, 2, '2/4/22','5/1/23', 1),
		(2, 2, '3/4/22','6/1/23', 1),
		(3, 2, '4/4/22','7/1/23', 1),
		(4, 2, '5/4/22','8/1/23', 1),
		(5, 2, '6/4/22','9/1/23', 1),
		(1, 2, '7/4/22','10/1/23', 1),
		(2, 2, '8/4/22','11/1/23', 0),
		(3, 2, '9/4/22','12/1/23', 1),
		(4, 2, '10/4/22','13/1/23', 0),
		(5, 2, '11/4/22','14/1/23', 1),
		(1, 2, '12/4/22','15/1/23', 1),
		(2, 2, '13/4/22','16/1/23', 0),
		(3, 2, '14/4/22','17/1/23', 1),
		(4, 2, '15/4/22','18/1/23', 0),
		(5, 2, '16/4/22','19/1/23', 1),
		(1, 2, '17/4/22','20/1/23', 1),
		(2, 2, '18/4/22','21/1/23', 0),
		(3, 2, '19/4/22','22/1/23', 1),
		(4, 2, '20/4/22','23/1/23', 0),
		(5, 2, '21/4/22','24/1/23', 1),
		(1, 2, '22/4/22','25/1/23', 1),
		(2, 2, '23/4/22','26/1/23', 0),
		(3, 2, '24/4/22','27/1/23', 1),
		(4, 2, '25/4/22','28/1/23', 0),
		(5, 2, '26/4/22','29/1/23', 1),
		(1, 2, '27/4/22','30/1/23', 1),
		(2, 2, '28/4/22','31/1/23', 0),
		(3, 2, '29/4/22','1/2/23', 1),
		(4, 2, '30/4/22','2/2/23', 0),
		(5, 2, '1/9/22','3/2/23', 1),
		(1, 2, '1/5/22','4/2/23', 1),
		(2, 2, '2/5/22','5/2/23', 0),
		(3, 2, '3/5/22','6/2/23', 1),
		(4, 2, '5/5/22','7/2/23', 0),
		(5, 2, '6/5/22','8/2/23', 1),
		(1, 2, '7/5/22','9/2/23', 1),
		(2, 2, '8/5/22','10/2/23', 0),
		(3, 2, '9/5/22','11/2/23', 1),
		(4, 2, '10/5/22','12/2/23', 0),
		(5, 2, '11/5/22','13/2/23', 1),
		(1, 2, '12/5/22','14/2/23', 1),
		(2, 2, '13/5/22','15/2/23', 0),
		(3, 2, '14/5/22','16/2/23', 1),
		(4, 2, '15/5/22','17/2/23', 0),
		(5, 2, '16/5/22','18/2/23', 1),
		(1, 2, '17/5/22','19/2/23', 1),
		(2, 2, '18/5/22','20/2/23', 0),
		(3, 2, '19/5/22','21/2/23', 1),
		(4, 2, '20/5/22','22/2/23', 0),
		(5, 2, '21/5/22','23/2/23', 1),
		(1, 2, '22/5/22','24/2/23', 1),
		(2, 2, '23/5/22','25/2/23', 0),
		(3, 2, '24/5/22','26/2/23', 1),
		(4, 2, '25/5/22','27/2/23', 0),
		(5, 2, '26/5/22','28/2/23', 1),
		(5, 3, '31/5/22','2/2/23', 1),
		(1, 3, '1/7/22','1/12/23', 1),
		(2, 3, '2/7/22','23/12/23', 0),
		(3, 3, '3/7/22','1/12/23', 1);
			

-- PUNTO 1,
-- SE CREA UNA VISTA PARA AGRUPAR LA INFORMACION SOLICITADA
CREATE VIEW PRESTA_LIBROS AS 
(SELECT COUNT(P.IDLIBRO) CANTIDAD FROM PRESTAMO P, LIBRO L, LIBAUT LB, AUTOR A
WHERE P.IDLIBRO = L.IDLIBRO AND L.IDLIBRO = LB.IDLIBRO AND LB.IDAUTOR = A.IDAUTOR 
GROUP BY P.IDLIBRO, L.TITULO, A.NOMBRE)

SELECT P.IDLIBRO, L.TITULO, A.NOMBRE
FROM PRESTAMO P, LIBRO L, LIBAUT LB, AUTOR A
WHERE P.IDLIBRO = L.IDLIBRO 
AND L.IDLIBRO = LB.IDLIBRO 
AND LB.IDAUTOR = A.IDAUTOR
GROUP BY P.IDLIBRO, L.TITULO, A.NOMBRE 
HAVING (SELECT MAX(CANTIDAD) FROM PRESTA_LIBROS) =  COUNT(P.IDLIBRO)
ORDER BY L.TITULO, A.NOMBRE


-- PUNTO 2.
CREATE VIEW PRESTA_LECTOR AS (SELECT E.IDLECTOR, E.NOMBRE, COUNT(*) CANTIDAD
FROM PRESTAMO P, ESTUDIANTE E
WHERE P.IDLECTOR = E.IDLECTOR
GROUP BY E.IDLECTOR, E.NOMBRE)

SELECT E.IDLECTOR, E.NOMBRE
FROM ESTUDIANTE E, PRESTAMO P, PRESTA_LECTOR PL
WHERE E.IDLECTOR = P.IDLECTOR AND 
(SELECT MAX(CANTIDAD) FROM PRESTA_LECTOR) = PL.CANTIDAD AND P.IDLECTOR = PL.IDLECTOR
GROUP BY E.IDLECTOR, E.NOMBRE
ORDER BY e.nombre ASC


-- punto 3.
SELECT l.idlibro, l.titulo, COUNT(p.idlibro) 
FROM LIBRO l, PRESTAMO p
WHERE l.idlibro = p.idlibro
GROUP BY l.idlibro
HAVING COUNT (p.idlibro) > 50
ORDER BY COUNT(p.idlibro) DESC

-- punto 4.
SELECT a.idautor,a.nombre,COUNT(p.idlibro) 
FROM AUTOR a, PRESTAMO p, LIBRO l, LIBAUT lb
WHERE lb.idautor=a.idautor 
AND l.idlibro = lb.idlibro 
AND l.idlibro = p.idlibro
GROUP BY a.idautor
ORDER BY COUNT(p.idlibro) DESC

-- punto 5.
SELECT l.idlibro,l.titulo  FROM  PRESTAMO p 
RIGHT JOIN LIBRO l
ON  l.idlibro = p.idlibro
GROUP BY l.idlibro
HAVING COUNT(p.idlibro)=0
ORDER BY l.titulo