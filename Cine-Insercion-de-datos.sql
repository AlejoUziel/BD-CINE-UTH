-- Crear base de datos 
CREATE DATABASE IF NOT EXISTS cine_db;
USE cine_db;
-- INSERCION DE DATOS 

-- Insertar roles de ejemplo
INSERT INTO roles (nombre_rol) VALUES 
('Cajero'), 
('Gerente de Sala'), 
('Proyeccion'), 
('Soporte Tecnico'), 
('Marketing'), 
('Seguridad');

-- Datos de ejemplo peliculas
INSERT INTO peliculas (titulo, idioma, duracion, clasificacion, descripcion) VALUES
('Destino final', 'Espanol', 130, 'C', 'Un destino mortal para cada integrante de esta amistad'),
('El secreto del manglar', 'Espanol', 120, 'B', 'Una aventura en los humedales de Honduras.'),
('Sombras del Caribe', 'Ingles', 110, 'C', 'Un thriller en las costas de Roatan.'),
('Codigo Jaguar', 'Subtitulado en Espanol', 100, 'B15', 'Hackers en un mundo de vigilancia.'),
('Horizonte Azul', 'Espanol', 95, 'A', 'Un romance entre culturas en La Ceiba.'),
('La senal perdida', 'Ingles', 130, 'C', 'Suspenso psicologico en una isla remota.'),
('Tierra de fuego', 'Subtitulado en Espanol', 105, 'B15', 'Un documental sobre volcanes activos.'),
('Mas alla del cielo', 'Espanol', 115, 'AA', 'Pelicula animada para toda la familia.'),
('Ocaso en Copan', 'Ingles', 123, 'A', 'Un arqueologo descubre secretos antiguos.'),
('Luna de mango', 'Subtitulado en Espanol', 108, 'B', 'Un drama rural entre cosechas y suenos.'),
('El pulso del silencio', 'Espanol', 101, 'C', 'Cronica de un periodista en zona de conflicto.');

-- Datos de ejemplo clientes
INSERT INTO clientes (nombre, edad, estudiante) VALUES
('Luis Fernando Medina', 19, 1),
('Alejandra Pineda', 22, 0),
('Carlos E. Matute', 17, 1),
('Gloria Villeda', 34, 0),
('Jorge Alvarado', 28, 0),
('Ingrid Molina', 20, 1),
('Daniela Reyes', 16, 1),
('Jose Rafael Mejia', 45, 0),
('Melissa Flores', 21, 0),
('Evelyn Ramirez', 18, 1);

-- Datos empleados
INSERT INTO empleados (nombre, rol) VALUES
('Mario Lanza', 'Cajero'),
('Carmen Matamoros', 'Marketing'),
('Oscar Castellanos', 'Gerente de Sala'),
('Karla Diaz', 'Seguridad'),
('Abel Rivas', 'Proyeccion');

-- Datos salas
INSERT INTO salas (nombre, tipo, capacidad) VALUES
('Sala Premium', '3D', 50),
('Sala Juvenil', '2D', 50),
('Sala Familiar', '2D', 50);

-- Datos funciones
INSERT INTO funciones (pelicula_id, sala_id, fecha_hora) VALUES
(1, 1, '2025-06-20 18:00:00'),
(2, 2, '2025-06-21 20:30:00'),
(3, 3, '2025-06-22 17:15:00'),
(4, 1, '2025-06-23 19:00:00'),
(5, 2, '2025-06-24 21:00:00'),
(6, 3, '2025-06-25 18:30:00'),
(7, 1, '2025-06-26 16:00:00'),
(8, 2, '2025-06-27 19:45:00'),
(9, 3, '2025-06-28 17:00:00'),
(10, 1, '2025-06-29 20:00:00');

-- Datos boletos
INSERT INTO boletos (funcion_id, cliente_id, precio, metodo_pago) VALUES
(1, 1, 120.00, 'Tarjeta'),
(2, 3, 150.00, 'Efectivo'),
(3, 5, 130.00, 'Tarjeta'),
(4, 7, 110.00, 'Efectivo'),
(5, 9, 140.00, 'Tarjeta'),
(6, 2, 125.00, 'Efectivo'),
(7, 4, 135.00, 'Tarjeta'),
(8, 6, 120.00, 'Efectivo'),
(9, 8, 150.00, 'Tarjeta'),
(10, 10, 100.00, 'Efectivo');

-- Datos snacks
INSERT INTO snacks (nombre, precio) VALUES
('Nachos con queso', 55.00),
('Refresco grande', 45.00),
('Combo Pareja', 120.00),
('Agua embotellada', 25.00),
('Brownie de chocolate', 35.00);

-- Datos promociones
INSERT INTO promociones (nombre, descripcion, descuento, dia_semana, aplicable_a) VALUES
('Viernes de 2x1', '2x1 en entradas los viernes', 50.00, 'Viernes', 'Todos'),
('Sabado de Romance', 'Descuento para parejas en sabado', 30.00, 'Sabado', 'Todos'),
('Descuento Estudiantes', '60% de descuento para estudiantes', 60.00, NULL, 'Estudiantes');

-- insercion de datos 2

INSERT INTO clientes (nombre, edad, estudiante) VALUES
('Luis Pérez', 22, 1),
('María Rodríguez', 28, 0),
('Carmen López', 19, 1),
('José Martínez', 35, 0),
('Ana Castillo', 24, 1),
('Ricardo Gómez', 30, 0),
('Daniela Ramos', 21, 1),
('Carlos Varela', 40, 0);

INSERT INTO peliculas (titulo, idioma, duracion) VALUES
('Guardianes del Futuro', 'Español', 130),
('Aventura en la Selva', 'Subtitulado en Español', 110),
('Código Mortal', 'Inglés', 95),
('La Llamada del Terror', 'Subtitulado en Inglés', 105),
('Romance Bajo la Lluvia', 'Español', 120),
('Exploradores Galácticos', 'Inglés', 115),
('Destino Fatal', 'Español', 100);

INSERT INTO salas (nombre, tipo) VALUES
('Sala VIP 1', '3D'),
('Sala Clasica 1', '2D'),
('Sala Premium', '3D'),
('Sala Infantil', '2D');

INSERT INTO funciones (pelicula_id, sala_id, fecha_hora) VALUES
(1, 1, '2025-06-16 18:00:00'),
(2, 2, '2025-06-16 15:00:00'),
(3, 1, '2025-06-17 20:00:00'),
(4, 3, '2025-06-17 21:30:00'),
(5, 2, '2025-06-18 19:00:00'),
(6, 4, '2025-06-18 14:00:00'),
(7, 3, '2025-06-19 16:00:00');

INSERT INTO boletos (funcion_id, cliente_id, precio, metodo_pago) VALUES
(1, 1, 150.00, 'Efectivo'),
(1, 2, 150.00, 'Tarjeta'),
(2, 3, 100.00, 'Efectivo'),
(3, 4, 180.00, 'Tarjeta'),
(4, 5, 200.00, 'Efectivo'),
(5, 6, 120.00, 'Tarjeta'),
(5, 7, 120.00, 'Efectivo'),
(6, 8, 100.00, 'Tarjeta'),
(7, 1, 180.00, 'Efectivo'),
(3, 2, 180.00, 'Tarjeta');

INSERT INTO snacks (nombre, precio) VALUES
('Palomitas Grandes', 60.00),
('Soda 1L', 45.00),
('Combo Nachos + Soda', 90.00),
('Chocolate', 35.00),
('Hot Dog', 50.00);

INSERT INTO ventas_snacks (boleto_id, snack_id, cantidad) VALUES
(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(3, 4, 2),
(4, 1, 1),
(4, 5, 1),
(5, 2, 2),
(6, 3, 1),
(7, 1, 1),
(8, 5, 2);
