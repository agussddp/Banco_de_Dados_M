USE Loja_M;


-- exiba os registros dos pedidos, com nome do cliente e do produto, com data/hora do pedido
SELECT 
	FORMAT (data_horario, 'dd-mm-yyyy hh:mm:yy') AS data_horario,
	 
	C.Nome		AS NomeCliente,
	PR.Nome		AS NomeProduto
FROM Pedido
INNER JOIN Cliente C	ON Pedido.ID_Cliente = C.ID_Cliente
INNER JOIN Produto PR	ON Pedido.ID_Produto = PR.ID_Produto
WHERE DAY (data_horario) = '01';
--MOUTH
--HOUR


--EXIBA TODOS OS CLIENTE QUE NÃO FIZERAM PEDIDOS

SELECT 
	C.Nome,
	PE.data_horario
FROM Cliente C
LEFT JOIN Pedido PE ON C.ID_Cliente = PE.ID_Cliente
WHERE PE.ID_Cliente IS NULL;


SELECT
	PE.data_horario,
	PR.Nome
FROM Pedido PE
RIGHT JOIN Produto PR ON PE.ID_Produto = PR.ID_Produto;


SELECT 
	C.Nome		AS NomeCliente,
	PR.Nome		AS NomeProduto
FROM Pedido
INNER JOIN Cliente C	ON Pedido.ID_Cliente = C.ID_Cliente
INNER JOIN Produto PR	ON Pedido.ID_Produto = PR.ID_Produto
WHERE data_horario BETWEEN '2025-06-10' 
   AND '2025-08-02';