USE lojads;

SELECT cl.nome, cl.id_cliente, pedidos.id_produto
FROM clientes AS cl
INNER JOIN pedidos ON pedidos.id_cliente = cl.id_cliente;

SELECT cl.nome, cl.id_cliente, pedidos.id_produto
FROM clientes AS cl
INNER JOIN pedidos ON pedidos.id_cliente = 2;

SELECT pro.preco, pro.nome_produto
FROM produtos AS pro
WHERE pro.preco > 500;

SELECT 
	clientes.nome AS NomeClienete, 
    cid.nome_cidade AS NomeCidade
FROM cidades AS cid
INNER JOIN clientes ON clientes.id_cidade = cid.id_cidade;

SELECT 
	pedidos.id_funcionario AS IdFuncionario,
    clientes.nome AS NomeCliente,
	pro.nome_produto AS NomePedido    
FROM produtos AS pro
INNER JOIN pedidos ON pedidos.id_pedido = pedidos.id_funcionario
INNER JOIN clientes ON clientes.id_cliente = pedidos.id_produto;


SELECT
	fun.nome_funcionario AS NomeFuncionario,
    cli.nome AS NomeCliente,
    cli.telefone AS TelefoneCliente,
    prod.nome_produto AS NomeProduto,
    ped.data_pedido AS DataPedido
FROM pedidos ped
INNER JOIN funcionarios fun ON fun.id_funcionario = ped.id_funcionario
INNER JOIN clientes cli ON cli.id_cliente = ped.id_cliente
INNER JOIN produtos prod ON prod.id_produto = ped.id_produto
WHERE cli.nome = "João Silva";


