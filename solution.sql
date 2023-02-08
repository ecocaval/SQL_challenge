-- Érico A. B. Cavalcanti - 08/02/2023

-- Busque produtos quaisquer, limitados a 5;
SELECT * FROM produtos limit 5;

-- Busque clientes quaisquer da loja, limitados a 3;
SELECT * FROM clientes limit 3;

-- Busque o produto com nome Televisão 43";
SELECT * FROM produtos WHERE nome = 'Televisão 43"';

-- Adicione um novo produto chamado Macbook Pro 13" com preço R$ 17.000,00;
INSERT INTO produtos (nome,preco) VALUES ('Macbook Pro 13"', 17000*100);

-- Orlando Pequeno Jesus fez barraco na loja e agora está banido. Remova-o da lista de clientes;
DELETE FROM clientes WHERE nome = 'Orlando Pequeno Jesus';

-- O dólar subiu mais uma vez e o preço do produto Pelúcia Strange Planet com Gatinho agora é R$ 80,00. Atualize no banco;
UPDATE produtos SET preco = 8000 WHERE nome = 'Pelúcia Strange Planet com Gatinho';

-- A alta do dólar também afetou o preço do Violão Lava ME 2. Altere seu preço para R$ 9800,00. Atualize o banco.
UPDATE produtos SET preco = 9800*100 WHERE nome = 'Violão Lava ME 2';

-- Lucca Santarém Branco usou o CPF de um laranja. Modifique seu CPF para o valor correto: 04652651298;
UPDATE clientes SET cpf = '04652651298' WHERE nome = 'Lucca Santarém Branco';

-- Chico Buarque de Holanda comprou o produto Violão Lava ME 2. Adicione esse registro de compra na tabela compra;
INSERT INTO compras (id_cliente, id_produto) VALUES ((SELECT id FROM clientes WHERE nome = 'Chico Buarque de Holanda'), (SELECT id FROM produtos WHERE nome = 'Violão Lava ME 2')); 

-- Olga Cascais Fortunato comprou dois `Celular Topo de Linha`. Adicione os registros de compra na tabela `compra`;
INSERT INTO compras (id_cliente, id_produto) VALUES ((SELECT id FROM clientes WHERE nome = 'Olga Cascais Fortunato'), (SELECT id FROM produtos WHERE nome = 'Celular Topo de Linha')); 

-- Martinha Lima Zambujal devolveu o produto Fone Topo de Linha. Remova este registro da tabela compra;
DELETE FROM compras where id_cliente = (SELECT id FROM clientes where nome ='Martinha Lima Zambujal') AND id_produto = (SELECT id FROM produtos where nome = 'Fone Topo de Linha');

-- Busque todos os produtos ordenados pelo preço, de forma crescente. Para este item, procure por sql order by;
SELECT * FROM produtos ORDER BY preco;

-- Busque os 3 produtos mais baratos;
SELECT * FROM produtos ORDER BY preco LIMIT 3;

-- Busque o produto com o maior preço;
SELECT * FROM produtos ORDER BY preco DESC LIMIT 1;

-- Busque o produto com o segundo menor preço. Para este item, procure por sql offset.
SELECT * FROM produtos ORDER BY preco DESC LIMIT 1 OFFSET 1;