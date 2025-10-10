USE Loja_M;

INSERT INTO Cliente(Nome)
VALUES
('yoongi'),
('jhope'),
('maria'),
('giulia');

SELECT * FROM Cliente;

INSERT INTO Produto(Nome, Preco)
VALUES
('Teclado',		150.00)	,
('Mouse',		80.00)	,
('Monitor',		900.00)	,
('Impressora',	600.00)	,
('Headset',		200.00)	;


SELECT * FROM Produto;

INSERT INTO Pedido(data_horario, ID_Cliente, ID_Produto)
VALUES
('2025-10-07 06:30:00', 1, 1),	-- yoongi comprou teclado
('2025-06-10 23:59:59', 2, 2),	-- jhope comprou mouse
('2025-08-01 00:30:00', 3, 3),	-- maria comprou monitor
('2025-08-01 18:00:00', 3, 5);	-- maria comprou headset


SELECT * FROM Pedido;