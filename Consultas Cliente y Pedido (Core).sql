INSERT INTO clientes (nombre, direccion, telefono)
VALUES ('Natalia Osorio', 'Calle Sol N°11', '123456789'),
		('Fernanda De Acmid', 'Calle Brujitas 912', '914458712'),
		('Jensin Sahar', 'Calle las Monjas 696', '779022317'),
		('Monica Ormosa', 'Avenida Globulo 253', '879224517'),
		('Ryan Prince', 'Edifico 09, piso 20 Puerta 00154', '789123456');

INSERT INTO pedidos (clientes_ID, fecha, total) 
VALUES (1, '2024-01-10', 150.00),
		(1, '2024-01-15', 200.00),
		(2, '2024-01-20', 300.00),
		(3, '2024-01-25', 250.00),
		(3, '2024-01-30', 100.00),
		(4, '2024-02-05', 400.00),
		(5, '2024-02-10', 350.00),
		(1, '2024-02-15', 200.00),
		(2, '2024-02-20', 50.00),
		(4, '2024-02-25', 300.00);
        
SELECT c.nombre, p.fecha, p.total
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.clientes_ID;

SELECT * FROM pedidos WHERE clientes_ID = 1;

SELECT c.nombre, SUM(p.total) AS total_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.clientes_ID
GROUP BY c.nombre;

DELETE FROM pedidos WHERE clientes_ID = 5;
DELETE FROM clientes WHERE id = 5;

SELECT c.nombre, COUNT(p.id) AS numero_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.clientes_ID
GROUP BY c.nombre
ORDER BY numero_pedidos DESC
LIMIT 3;