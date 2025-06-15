-- Crear base de datos 
CREATE DATABASE IF NOT EXISTS cine_db;
USE cine_db;

-- CONSULTAS 

-- 1. Mostrar todas las peliculas
SELECT * FROM peliculas;

-- 2. Funciones disponibles para una pelicula
SELECT f.id, f.fecha_hora, s.nombre AS sala, s.tipo 
FROM funciones f
JOIN salas s ON f.sala_id = s.id
WHERE f.pelicula_id = 1
ORDER BY f.fecha_hora;

-- 3. Boletos vendidos por funcion
SELECT b.id, c.nombre AS cliente, b.precio, b.metodo_pago
FROM boletos b
JOIN clientes c ON b.cliente_id = c.id
WHERE b.funcion_id = 1;

-- 4. Total recaudado por funcion
SELECT f.id, SUM(b.precio) AS total_recaudado
FROM funciones f
JOIN boletos b ON f.id = b.funcion_id
GROUP BY f.id;

-- 5. Snacks vendidos por tipo
SELECT s.nombre, SUM(v.cantidad) AS total_vendido
FROM ventas_snacks v
JOIN snacks s ON v.snack_id = s.id
GROUP BY s.id;

-- 6. Peliculas mas proyectadas (Top 5)
SELECT p.titulo, COUNT(f.id) AS total_funciones
FROM funciones f
JOIN peliculas p ON f.pelicula_id = p.id
GROUP BY p.id
ORDER BY total_funciones DESC
LIMIT 5;

-- 7. Clientes que han comprado mas boletos
SELECT c.nombre, COUNT(b.id) AS boletos_comprados
FROM boletos b
JOIN clientes c ON b.cliente_id = c.id
GROUP BY c.id
ORDER BY boletos_comprados DESC;

-- 8.  Total de ingresos por dia
SELECT DATE(f.fecha_hora) AS fecha, SUM(b.precio) AS total_ingresos
FROM boletos b
JOIN funciones f ON b.funcion_id = f.id
GROUP BY fecha
ORDER BY fecha DESC;

-- 9. Peliculas proyectadas en una sala especifica
SELECT DISTINCT p.titulo
FROM funciones f
JOIN peliculas p ON f.pelicula_id = p.id
WHERE f.sala_id = 2;

-- 10.Total de snacks vendidos por día
SELECT DATE(f.fecha_hora) AS fecha, SUM(v.cantidad) AS total_snacks
FROM ventas_snacks v
JOIN boletos b ON v.boleto_id = b.id
JOIN funciones f ON b.funcion_id = f.id
GROUP BY fecha
ORDER BY fecha DESC;

-- 11. Total recaudado por los tipo de sala
SELECT s.tipo, SUM(b.precio) AS total_recaudado
FROM boletos b
JOIN funciones f ON b.funcion_id = f.id
JOIN salas s ON f.sala_id = s.id
GROUP BY s.tipo;


-- 12.  Peliculas sin funciones programadas
SELECT p.titulo
FROM peliculas p
LEFT JOIN funciones f ON p.id = f.pelicula_id
WHERE f.id IS NULL;

-- 13. Clientes estudiantes con más de 3 boletos comprados
SELECT c.nombre, COUNT(b.id) AS boletos
FROM clientes c
JOIN boletos b ON c.id = b.cliente_id
WHERE c.estudiante = 1
GROUP BY c.id
HAVING boletos > 3;


-- 14. funciones sin boletos vendidos
SELECT f.id, f.fecha_hora, p.titulo
FROM funciones f
LEFT JOIN boletos b ON f.id = b.funcion_id
JOIN peliculas p ON f.pelicula_id = p.id
WHERE b.id IS NULL;

-- 15. Peliculas mas taquilleras osea con mayor recaudacion total
SELECT p.titulo, SUM(b.precio) AS total_recaudado
FROM boletos b
JOIN funciones f ON b.funcion_id = f.id
JOIN peliculas p ON f.pelicula_id = p.id
GROUP BY p.id
ORDER BY total_recaudado DESC
LIMIT 1;







