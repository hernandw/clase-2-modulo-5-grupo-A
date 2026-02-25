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