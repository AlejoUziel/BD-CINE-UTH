-- Eliminar base de datos si existe para reiniciar
DROP DATABASE IF EXISTS cine_db;

-- Crear base de datos 
CREATE DATABASE IF NOT EXISTS cine_db;
USE cine_db;

-- CREACION DE TABLAS

-- Tabla peliculas
CREATE TABLE peliculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    idioma ENUM('Espanol', 'Ingles', 'Subtitulado en Espanol', 'Subtitulado en Ingles') NOT NULL,
    duracion INT NOT NULL,
    clasificacion ENUM('AA', 'A', 'B', 'B15', 'C', 'D') NOT NULL,
    descripcion TEXT
);

-- Tabla clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    edad INT NOT NULL,
    estudiante BOOLEAN NOT NULL
);

-- Tabla empleados
CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    rol VARCHAR(50) NOT NULL
);

-- Tabla salas
CREATE TABLE salas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    tipo ENUM('2D', '3D') NOT NULL,
    capacidad INT NOT NULL DEFAULT 50
);

-- Tabla funciones
CREATE TABLE funciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pelicula_id INT NOT NULL,
    sala_id INT NOT NULL,
    fecha_hora DATETIME NOT NULL,
    FOREIGN KEY (pelicula_id) REFERENCES peliculas(id) ON DELETE CASCADE,
    FOREIGN KEY (sala_id) REFERENCES salas(id) ON DELETE CASCADE
);

-- Tabla boletos
CREATE TABLE boletos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    funcion_id INT NOT NULL,
    cliente_id INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    metodo_pago ENUM('Efectivo', 'Tarjeta') NOT NULL,
    FOREIGN KEY (funcion_id) REFERENCES funciones(id) ON DELETE CASCADE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id) ON DELETE CASCADE
);

-- Tabla promociones
CREATE TABLE promociones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT,
    descuento DECIMAL(5,2) NOT NULL,
    dia_semana ENUM('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo'),
    aplicable_a ENUM('Todos','Estudiantes','Funcion_2D','Funcion_3D') DEFAULT 'Todos'
);

-- Tabla snacks
CREATE TABLE snacks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);

-- Tabla ventas de snacks
CREATE TABLE ventas_snacks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    boleto_id INT NOT NULL,
    snack_id INT NOT NULL,
    cantidad INT NOT NULL DEFAULT 1,
    FOREIGN KEY (boleto_id) REFERENCES boletos(id) ON DELETE CASCADE,
    FOREIGN KEY (snack_id) REFERENCES snacks(id) ON DELETE CASCADE
);

-- Tabla empleados roles
CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_rol VARCHAR(50) NOT NULL UNIQUE
);


-- Ver triggers creados
SHOW TRIGGERS;
SHOW WARNINGS;
