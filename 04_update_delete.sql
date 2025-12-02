UPDATE produto
SET estoque_minimo = 15
WHERE nome = 'Café 500g';
UPDATE produto
SET quantidade_estoque = quantidade_estoque + 10
WHERE quantidade_estoque < estoque_minimo;
UPDATE usuario
SET perfil = 'ADMINISTRADOR'
WHERE login = 'bruno.op';
DELETE FROM movimentacao
WHERE data_movimentacao < '2025-01-01';
DELETE FROM movimentacao
WHERE tipo_movimentacao = 'AJUSTE'
  AND (observacao IS NULL OR observacao = '');
DELETE FROM usuario
WHERE id_usuario NOT IN (SELECT DISTINCT id_usuario FROM movimentacao)
AND login = 'carla.op';