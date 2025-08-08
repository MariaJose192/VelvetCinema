-- Inserción de 6 películas
INSERT INTO pelicula (titulo, descripcion, duracion, fecha_estreno, genero, edades, trailer, portada, publicada) VALUES
('Los tipos malos 2', 'Los atracadores reformados vuelven a la acción en una nueva aventura animada.', 87, '2025-08-06', 'Animación', 'Apta para todos los públicos', "https://www.youtube.com/watch?v=8i8KXqdpP98&t=7s", NULL, TRUE),
('Los Cuatro Fantásticos: Primeros pasos', 'El grupo más icónico de Marvel se enfrenta a su mayor amenaza.', 130, '2025-07-24', 'Acción', 'No recomendada para menores de 7 años', NULL, NULL, TRUE),
('Devuélvemela', 'Un inquietante thriller sobre secretos familiares y posesiones.', 99, '2025-08-01', 'Terror', 'No recomendada para menores de 18 años', NULL, NULL, TRUE),
('Padre no hay más que uno 5', 'Javier se enfrenta al caos de una familia aún más numerosa.', 100, '2025-08-06', 'Comedia', 'Apta para todos los públicos', NULL, NULL, TRUE),
('Jurassic World: El Renacer', 'Dinosaurios y humanos luchan por la supervivencia en una nueva era.', 133, '2025-08-06', 'Ciencia Ficción', 'No recomendada para menores de 12 años', NULL, NULL, TRUE);


-- Inserción de 6 salas
INSERT INTO sala (nombre, filas, columnas, capacidad) VALUES
('Sala A', 8, 10, 80),
('Sala B', 7, 10, 70),
('Sala C', 6, 10, 60),
('Sala D', 12, 10, 120),
('Sala E', 4, 10, 40),
('Sala F', 9, 10, 90);

-- Asumiendo que tienes películas con IDs del 1 al 6 y salas con IDs del 1 al 3
-- Día 1 - 2025-08-08
INSERT INTO sesion (fecha_sesion, pelicula_id, sala_id) VALUES
('2025-08-08 12:00:00', 1, 1),
('2025-08-08 14:30:00', 2, 2),
('2025-08-08 17:00:00', 3, 3),
('2025-08-08 19:30:00', 4, 4),
('2025-08-08 22:00:00', 5, 5);

-- Día 2 - 2025-08-09
INSERT INTO sesion (fecha_sesion, pelicula_id, sala_id) VALUES
('2025-08-09 11:00:00', 2, 1),
('2025-08-09 13:30:00', 1, 2),
('2025-08-09 16:00:00', 5, 3),
('2025-08-09 18:30:00', 3, 4),
('2025-08-09 21:00:00', 4, 6);

-- Día 3 - 2025-08-10
INSERT INTO sesion (fecha_sesion, pelicula_id, sala_id) VALUES
('2025-08-10 12:15:00', 4, 1),
('2025-08-10 14:45:00', 5, 2),
('2025-08-10 17:15:00', 2, 3),
('2025-08-10 19:45:00', 3, 5),
('2025-08-10 22:15:00', 1, 6);

-- Día 4 - 2025-08-11
INSERT INTO sesion (fecha_sesion, pelicula_id, sala_id) VALUES
('2025-08-11 11:30:00', 3, 2),
('2025-08-11 14:00:00', 1, 3),
('2025-08-11 16:30:00', 5, 4),
('2025-08-11 19:00:00', 2, 5),
('2025-08-11 21:30:00', 4, 6);


-- Sala A (ID 1), 8 filas x 10 butacas (ascendente)
INSERT INTO butaca (fila, butaca, sala_id, bloqueada_hasta, usuario_id)
SELECT f, c, 1, NULL, NULL
FROM (SELECT 1 AS f UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8) AS filas,
     (SELECT 1 AS c UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) AS butacas
ORDER BY f ASC, c ASC;

-- Sala B (ID 2), 7 filas x 10 butacas (ascendente)
INSERT INTO butaca (fila, butaca, sala_id, bloqueada_hasta, usuario_id)
SELECT f, c, 2, NULL, NULL
FROM (SELECT 1 AS f UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7) AS filas,
     (SELECT 1 AS c UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) AS butacas
ORDER BY f ASC, c ASC;

-- Sala C (ID 3), 6 filas x 10 butacas (ascendente)
INSERT INTO butaca (fila, butaca, sala_id, bloqueada_hasta, usuario_id)
SELECT f, c, 3, NULL, NULL
FROM (SELECT 1 AS f UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6) AS filas,
     (SELECT 1 AS c UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) AS butacas
ORDER BY f ASC, c ASC;

-- Sala D (ID 4), 12 filas x 10 butacas (ascendente)
INSERT INTO butaca (fila, butaca, sala_id, bloqueada_hasta, usuario_id)
SELECT f, c, 4, NULL, NULL
FROM (SELECT 1 AS f UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10 UNION ALL SELECT 11 UNION ALL SELECT 12) AS filas,
     (SELECT 1 AS c UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) AS butacas
ORDER BY f ASC, c ASC;

-- Sala E (ID 5), 4 filas x 10 butacas (ascendente)
INSERT INTO butaca (fila, butaca, sala_id, bloqueada_hasta, usuario_id)
SELECT f, c, 5, NULL, NULL
FROM (SELECT 1 AS f UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4) AS filas,
     (SELECT 1 AS c UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) AS butacas
ORDER BY f ASC, c ASC;

-- Sala F (ID 6), 9 filas x 10 butacas (ascendente)
INSERT INTO butaca (fila, butaca, sala_id, bloqueada_hasta, usuario_id)
SELECT f, c, 6, NULL, NULL
FROM (SELECT 1 AS f UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9) AS filas,
     (SELECT 1 AS c UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5 UNION ALL SELECT 6 UNION ALL SELECT 7 UNION ALL SELECT 8 UNION ALL SELECT 9 UNION ALL SELECT 10) AS butacas
ORDER BY f ASC, c ASC;
