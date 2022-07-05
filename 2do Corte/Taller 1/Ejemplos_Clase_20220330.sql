CREATE TABLE FABRICANTES(
CODIGO INTEGER,
NOMBRE TEXT,
PRIMARY KEY(CODIGO))

CREATE TABLE ARTICULOS(
CODIGO INTEGER,
NOMBRE TEXT,
PRECIO INTEGER,
FABRICANTE INTEGER,
PRIMARY KEY(CODIGO),
FOREIGN KEY(FABRICANTE) REFERENCES FABRICANTES(CODIGO))

INSERT INTO FABRICANTES VALUES(1,'DELL');
INSERT INTO FABRICANTES VALUES(2,'LENOVO');
INSERT INTO FABRICANTES VALUES(3,'TOSHIBA');

SELECT * FROM FABRICANTES

INSERT INTO ARTICULOS VALUES(1,'PORTATIL',3000000,1);
INSERT INTO ARTICULOS VALUES(2,'PORTATIL',2800000,2);
INSERT INTO ARTICULOS VALUES(3,'PORTATIL',3500000,3);
INSERT INTO ARTICULOS VALUES(4,'PC DESK',2500000,1);
INSERT INTO ARTICULOS VALUES(5,'PC DESK',2000000,2);
INSERT INTO ARTICULOS VALUES(6,'TABLET',3000000,3);
INSERT INTO ARTICULOS VALUES(7,'MONITOR',3000000,1);
INSERT INTO ARTICULOS VALUES(8,'IMPRESORA',3000000,2);
INSERT INTO ARTICULOS VALUES(9,'DISCO DURO',3000000,3);
INSERT INTO ARTICULOS VALUES(10,'WORKSTATION',3000000,1);

SELECT * FROM ARTICULOS

----------------------------- TALLER 1 SQL ----------------------
--PUNTO 1
SELECT CODIGO, NOMBRE, PRECIO FROM ARTICULOS
WHERE PRECIO >= 1000000
ORDER BY PRECIO DESC, NOMBRE ASC

--PUNTO 2
SELECT ARTICULOS.NOMBRE, PRECIO, FABRICANTES.NOMBRE
FROM ARTICULOS, FABRICANTES
WHERE ARTICULOS.FABRICANTE=FABRICANTES.CODIGO
ORDER BY ARTICULOS.NOMBRE

SELECT ART.NOMBRE, PRECIO, FAB.NOMBRE
FROM ARTICULOS ART, FABRICANTES FAB
WHERE ART.FABRICANTE=FAB.CODIGO
ORDER BY ART.NOMBRE;

--PUNTO 3
SELECT FAB.NOMBRE, AVG(PRECIO)
FROM ARTICULOS ART, FABRICANTES FAB
WHERE ART.FABRICANTE=FAB.CODIGO
GROUP BY FAB.NOMBRE
ORDER BY FAB.NOMBRE;

--PUNTO 4
SELECT FAB.NOMBRE, ART.NOMBRE, PRECIO
FROM ARTICULOS ART, FABRICANTES FAB
WHERE ART.FABRICANTE=FAB.CODIGO AND 
PRECIO = (SELECT MAX(PRECIO) FROM ARTICULOS WHERE FABRICANTE=FAB.CODIGO)
ORDER BY FAB.NOMBRE;

--PUNTO 5
SELECT FAB.NOMBRE, ART.NOMBRE, PRECIO, PRECIO*0.9 PRECIO_REBAJADO
FROM ARTICULOS ART, FABRICANTES FAB
WHERE ART.FABRICANTE=FAB.CODIGO AND PRECIO > 1000000
ORDER BY FAB.NOMBRE

UPDATE ARTICULOS SET PRECIO = PRECIO * 0.9
WHERE PRECIO > 1000000

SELECT FAB.NOMBRE, ART.NOMBRE, PRECIO
FROM ARTICULOS ART, FABRICANTES FAB
WHERE ART.FABRICANTE=FAB.CODIGO 
ORDER BY FAB.NOMBRE























































