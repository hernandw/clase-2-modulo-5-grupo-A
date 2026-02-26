--Creación de Tablas:

--Las Sintaxis basica para crear la tabla es:

CREATE TABLE nombre_tabla(
nombre_campo tipo_de_dato,
nombre_campo tipo_de_dato,

);

create table usuarios(
nombre varchar,
clave varchar
);

select * from usuarios;

drop table if exists usuarios;

/* INSERCIÓN DE REGISTROS */

--forma1
INSERT INTO usuarios (nombre, clave) values('Arly', '123456');
INSERT INTO usuarios (nombre, clave) values('Juan', '12345678');
INSERT INTO usuarios (nombre, clave) values('David', '123456AB');
INSERT INTO usuarios (nombre, clave) values('Walter', '12345678ABC');

--forma2
INSERT INTO usuarios 
values('Jorge', 'asdfg');


--forma3
INSERT INTO usuarios (nombre, clave) 
values 
('Juan Emilio', '123456'),
('Yolanda', '123456'),
('Josefa', '123456'),
('Javiera', '123456');

/* TIPOS DE DATOS: */

-- varchar: cadena de caracteres, siempre lo vamos a colocar en comillas simples
-- INTEGER: se usa para guardar valores numericos enteros
-- float: se usa para almacenar valores numericos con decimales


--Insertar tabla con disntitos tipos de datos
drop table if exists libros

CREATE TABLE libros(
titulo varchar,
autor varchar(50),
editorial varchar(30),
precio float,
cantidad integer
);

select * from libros;

INSERT INTO libros (titulo, autor, editorial, precio, cantidad)
VALUES
('Cien Años de Soledad', 'Gabriel García Márquez', 'Sudamericana', 19.99, 15),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 'Espasa', 24.50, 10),
('La Sombra del Viento', 'Carlos Ruiz Zafón', 'Planeta', 18.75, 20),
('El Amor en los Tiempos del Cólera', 'Gabriel García Márquez', 'Oveja Negra', 17.40, 12),
('Rayuela', 'Julio Cortázar', 'Alfaguara', 16.30, 8),
('1984', 'George Orwell', 'Debolsillo', 14.99, 25),
('El Principito', 'Antoine de Saint-Exupéry', 'Salamandra', 12.50, 30),
('Crónica de una Muerte Anunciada', 'Gabriel García Márquez', 'Norma', 13.80, 18),
('La Casa de los Espíritus', 'Isabel Allende', 'Plaza & Janés', 20.00, 14),
('Fahrenheit 451', 'Ray Bradbury', 'Minotauro', 15.60, 22);


/* DISTINTAS SELECCIONES */
select titulo, autor FROM libros;
select editorial, cantidad FROM libros;

select titulo, cantidad from libros WHERE titulo = 'Rayuela';

/* OPERADORES relacionales
 */

 = igual
 <> distinto
 > mayor
 < menor
 >= mayor o igual
 <= menor o igual


/* BORRAR REGISTROS */

delete from usuarios;

delete from usuarios where nombre = 'Arly';

/* ACTUALIZAR REGISTROS */

update nombre_tabla set clave = 'nuevo valor'


CLAVE PRIMARIA: es un campo que identifica de manera unica cada registro, no puede haber dos registros con el mismo valor en la clave primaria, no puede ser nulo.

create table nombre_tabla(
campo, tipo
primary key (nombre_campo)

);

create table nombre_tabla(
campo1, tipo primary key,
campo2, tipo,
campo3, tipo

);


-- ejemplos:
delete from libros WHERE codigo = 11 12 13 14; --error en la consulta

delete from libros WHERE codigo > 10;

delete from libros WHERE codigo >= 15 AND codigo < 18;


/* UNIONES DE TABLAS */

create table editorial(
codigo serial primary key,
nombre varchar(30) not null

);


select * from editorial;
select * from libros;


INSERT INTO libros (titulo, autor, codigoeditorial, precio, cantidad)
VALUES
('Cien Años de Soledad', 'Gabriel García Márquez', 3, 19.99, 15),
('Don Quijote de la Mancha', 'Miguel de Cervantes', 6, 24.50, 10),
('La Sombra del Viento', 'Carlos Ruiz Zafón', 1, 18.75, 20),
('Rayuela', 'Julio Cortázar', 2, 16.30, 8),
('1984', 'George Orwell', 4, 14.99, 25),
('El Principito', 'Antoine de Saint-Exupéry', 5, 12.50, 30),
('Fahrenheit 451', 'Ray Bradbury', 8, 15.60, 22),
('La Casa de los Espíritus', 'Isabel Allende', 9, 20.00, 14),
('Crónica de una Muerte Anunciada', 'Gabriel García Márquez', 7, 13.80, 18),
('El Amor en los Tiempos del Cólera', 'Gabriel García Márquez', 10, 17.40, 12);


INSERT INTO editorial (nombre)
VALUES
('Planeta'),
('Alfaguara'),
('Sudamericana'),
('Debolsillo'),
('Salamandra'),
('Espasa'),
('Norma'),
('Minotauro'),
('Anagrama'),
('Oceano');