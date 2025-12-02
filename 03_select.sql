SELECT id_produto, nome, quantidade_estoque, estoque_minimo
FROM produto
ORDER BY nome;
SELECT id_produto, nome, quantidade_estoque
FROM produto
WHERE quantidade_estoque <= estoque_minimo
ORDER BY quantidade_estoque ASC;
SELECT m.id_movimentacao, p.nome AS produto, u.nome AS usuario, m.tipo_movimentacao,
       m.quantidade, m.data_movimentacao, m.observacao
FROM movimentacao m
JOIN produto p ON p.id_produto = m.id_produto
JOIN usuario u ON u.id_usuario = m.id_usuario
ORDER BY m.data_movimentacao DESC
LIMIT 10;
SELECT p.nome, SUM(m.quantidade) AS total_vendido
FROM movimentacao m
JOIN produto p ON p.id_produto = m.id_produto
WHERE m.tipo_movimentacao = 'SAIDA_VENDA'
GROUP BY p.nome
ORDER BY total_vendido DESC;
SELECT m.id_movimentacao, p.nome, m.tipo_movimentacao, m.quantidade
FROM movimentacao m
JOIN produto p ON p.id_produto = m.id_produto
WHERE m.data_movimentacao BETWEEN '2025-05-01' AND '2025-05-31'
ORDER BY m.data_movimentacao;