--se crea la db
CREATE DATABASE case1;
--ingresamos a la db \c case1

--creamos la tabla departamento
CREATE TABLE departamento (
    id INT PRIMARY KEY,
    nombre VARCHAR(100)
);
--creamos la tabla trabajador
CREATE TABLE trabajador(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR (150),
    rut VARCHAR(10),
    direccion VARCHAR(200),
    departamento INT ,
    FOREIGN KEY (departamento) REFERENCES departamento(id)
);

--creamos la tabla liquidacion
CREATE TABLE liquidacion (
    id INT PRIMARY KEY,
    url_drive VARCHAR,
    trabajador INT,
    FOREIGN KEY (trabajador) REFERENCES trabajador(id) 
);
