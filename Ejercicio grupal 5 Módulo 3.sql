CREATE DATABASE EJERCICIOGRUPAL5;
USE EJERCICIOGRUPAL5;
-- Creamos las 2 tablas
CREATE TABLE USUARIOS(
	ID_USUARIO INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
	NOMBRE VARCHAR(50) NOT NULL,
    APELLIDO VARCHAR(50) NOT NULL,
    CONTRASEÑA VARCHAR(50) NOT NULL,
    ZONA_HORARIA VARCHAR(20) NOT NULL DEFAULT "UTC-3",
    GENERO VARCHAR(15) NOT NULL,
    TELEFONO VARCHAR(20) NOT NULL
);

CREATE TABLE INGRESO_USUARIOS(
	ID_INGRESO INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    ID_USUARIO INT,
    HORA_INGRESO DATETIME DEFAULT NOW()
);

DROP TABLE INGRESO_USUARIOS;

DESCRIBE USUARIOS;
DESCRIBE INGRESO_USUARIOS;
DELETE FROM INGRESO_USUARIOS;
SELECT * FROM USUARIOS;
SELECT * FROM INGRESO_USUARIOS;

-- Cambiamos el valor por defecto de la zona horaria
ALTER TABLE usuarios
ALTER COLUMN zona_horaria SET DEFAULT 'UTC-2';

-- Ingresamos 8 registros en cada tabla
INSERT INTO usuarios (id_usuario, nombre, apellido, contraseña, genero, telefono)
VALUES 
(1, 'Juan', 'Pérez', '123456', 'M', '+56 9 1234 5678'),
(2, 'María', 'González', 'abc123', 'F', '+56 9 8765 4321'),
(3, 'Pedro', 'Martínez', 'qwerty', 'M', '+56 9 5555 5555'),
(4, 'Luisa', 'Rodríguez', 'asdfg', 'F', '+56 9 1111 2222'),
(5, 'Carlos', 'Sánchez', 'zxcvb', 'M', '+56 9 4444 4444'),
(6, 'Ana', 'Ramírez', 'qazwsx', 'F', '+56 9 7777 7777'),
(7, 'Miguel', 'Hernández', 'poiuyt', 'M', '+56 9 8888 8888'),
(8, 'Lucía', 'López', 'lkjhgf', 'F', '+56 9 9999 9999');
INSERT INTO INGRESO_USUARIOS (ID_USUARIO) VALUES 
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8);
/*
	Justifique cada tipo de dato utilizado, ¿Es el óptimo en cada caso?
    
*/