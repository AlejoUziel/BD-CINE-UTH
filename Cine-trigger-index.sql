
-- Crear base de datos 
CREATE DATABASE IF NOT EXISTS cine_db;
USE cine_db;

-- INDICES Y TRIGGERS DE BD

-- INDICES
CREATE INDEX idx_funcion_pelicula ON funciones(pelicula_id);
CREATE INDEX idx_funcion_sala ON funciones(sala_id);
CREATE INDEX idx_boleto_funcion ON boletos(funcion_id);
CREATE INDEX idx_boleto_cliente ON boletos(cliente_id);

-- TRIGGER para aplicar descuento a estudiantes
DELIMITER //
CREATE TRIGGER aplicar_descuento_estudiante BEFORE INSERT ON boletos
FOR EACH ROW
BEGIN
    DECLARE es_estudiante BOOLEAN;
    SELECT estudiante INTO es_estudiante FROM clientes WHERE id = NEW.cliente_id;
    IF es_estudiante = TRUE THEN
        SET NEW.precio = NEW.precio * 0.4;
    END IF;
END;//
DELIMITER ;


-- Verificacion de triggers creados
SHOW TRIGGERS;

-- verificar si hay alertas
SHOW WARNINGS;
