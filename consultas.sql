--Creación de Tablas:

--Las Sintaxis basica para crear la tabla es:

CREATE TABLE nombre_tabla(
nombre_campo tipo_de_dato,
nombre_campo tipo_de_dato,

);

create table usuarios(
nombre varchar(50),
clave varchar(60)
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

