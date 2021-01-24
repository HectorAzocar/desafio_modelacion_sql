
CREATE DATABASE colegio;

\c colegio;

CREATE TABLE curso(
    id_curso SERIAL PRIMARY KEY,
     nombre_curso VARCHAR(25)
);

CREATE TABLE alumno(
    rut VARCHAR(20) PRIMARY KEY,
     nombre VARCHAR(20),
      id_curso INT REFERENCES curso(id_curso)
);

CREATE TABLE profesor(
    id_profesor SERIAL PRIMARY KEY,
    nombre VARCHAR(20),
    departamento VARCHAR(25)
);

CREATE TABLE prueba(
    id_prueba SERIAL PRIMARY KEY,
    puntaje INT,
    rut_alumno VARCHAR(15) REFERENCES alumno(rut),
    id_profesor INT REFERENCES profesor(id_profesor)
);

--INGRESAR 2 CURSOS
INSERT INTO curso(nombre_curso) VALUES('base de datos');
INSERT INTO curso(nombre_curso) VALUES('web'),('matematica');

--INGRESAR 3 ALUMNOS
    INSERT INTO alumno VALUES('1234567-0', 'david',  1);
    INSERT INTO alumno VALUES('5647382-0', 'daved',  1),('7654321-1', 'davod', 2);

--ingresar profesores
    INSERT INTO profesor(nombre, departamento) VALUES('carlos','investigacion');

--pruebas
INSERT INTO prueba(rut_alumno, id_profesor) VALUES('1234567-0', 1);
INSERT INTO prueba(rut_alumno, id_profesor) VALUES('5647382-0', 1);
INSERT INTO prueba(rut_alumno, id_profesor) VALUES('7654321-1', 1);

--puntaje
UPDATE prueba SET puntaje=9 WHERE id_prueba=1;
UPDATE prueba SET puntaje=8 WHERE id_prueba=2;
UPDATE prueba SET puntaje=7 WHERE id_prueba=3;