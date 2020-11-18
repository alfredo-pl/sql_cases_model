--se crea la db
CREATE DATABASE case2;
--ingresamos a la db \c case2

--creamos la tabla curso
CREATE TABLE curso(
    id VARCHAR PRIMARY KEY,
    nombre VARCHAR (150)
);

--creamos la tabla alumno
CREATE TABLE alumno(
    id INT PRIMARY KEY,
    nombre VARCHAR(100),
    rut VARCHAR(10)
);

--creamos la tabla departamento
CREATE TABLE departamento(
id VARCHAR PRIMARY KEY,
nombre VARCHAR(100)
);

--creamos la tabla profesor
CREATE TABLE profesor(
id INT PRIMARY KEY,
nombre VARCHAR(100),
departamento VARCHAR,
FOREIGN KEY (departamento) REFERENCES departamento(id)
);

--creamos la tabla prueba
CREATE TABLE  prueba(
    id VARCHAR PRIMARY KEY,
    puntaje INT,
    profesor INT,
    FOREIGN KEY (profesor) REFERENCES profesor(id)
); 


--creamos la tabla relacion curso_alumno
CREATE TABLE curso_alumno (
    id INT PRIMARY KEY,
    id_curso VARCHAR,
    id_alumno INT,
    FOREIGN KEY (id_curso) REFERENCES curso(id), 
    FOREIGN KEY (id_alumno) REFERENCES alumno(id)
);

--creamos la tabla relacion prueba_alumno
CREATE TABLE prueba_alumno (
    id INT PRIMARY KEY,
    id_prueba VARCHAR,
    id_alumno INT,
    FOREIGN KEY (id_prueba) REFERENCES prueba(id), 
    FOREIGN KEY (id_alumno) REFERENCES alumno(id)
);

