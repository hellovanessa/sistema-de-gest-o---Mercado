INSERT INTO usuario (nome, perfil, login, senha)
VALUES 
  ('Ana Souza', 'ADMINISTRADOR', 'ana.admin', 'senha123'),
  ('Bruno Oliveira', 'OPERADOR', 'bruno.op', 'senha123'),
  ('Carla Lima', 'OPERADOR', 'carla.op', 'senha123');
INSERT INTO produto (nome, descricao, quantidade_estoque, estoque_minimo)
VALUES
  ('Arroz 5kg', 'Arroz branco tipo 1 pacote 5kg', 50, 10),
  ('Feijão 1kg', 'Feijão carioca pacote 1kg', 30, 10),
  ('Óleo de soja 900ml', 'Garrafa de óleo 900ml', 20, 10),
  ('Açúcar 1kg', 'Açúcar refinado 1kg', 15, 10),
  ('Café 500g', 'Café torrado 500g', 8, 10);
INSERT INTO movimentacao (id_produto, id_usuario, tipo_movimentacao, quantidade, data_movimentacao, observacao)
VALUES
  (1, 1, 'ENTRADA', 20, '2025-05-01', 'Compra fornecedor X'),
  (2, 1, 'ENTRADA', 15, '2025-05-02', 'Compra fornecedor Y'),
  (3, 2, 'ENTRADA', 10, '2025-05-02', 'Reposição semanal'),
  (1, 2, 'SAIDA_VENDA', 5, '2025-05-03', 'Venda caixa 01'),
  (2, 3, 'SAIDA_VENDA', 3, '2025-05-03', 'Venda caixa 02'),
  (5, 2, 'SAIDA_VENDA', 4, '2025-05-04', 'Promoção café'),
  (4, 1, 'AJUSTE', 2, '2025-05-04', 'Pacotes rasgados');