CREATE TABLE usuario (
    id_usuario      SERIAL PRIMARY KEY,
    nome            VARCHAR(100) NOT NULL,
    perfil          VARCHAR(20)  NOT NULL CHECK (perfil IN ('ADMINISTRADOR', 'OPERADOR')),
    login           VARCHAR(50)  NOT NULL UNIQUE,
    senha           VARCHAR(255) NOT NULL
);
CREATE TABLE produto (
    id_produto          SERIAL PRIMARY KEY,
    nome                VARCHAR(100) NOT NULL,
    descricao           TEXT,
    quantidade_estoque  INT NOT NULL DEFAULT 0,
    estoque_minimo      INT NOT NULL DEFAULT 10
);
CREATE TABLE movimentacao (
    id_movimentacao     SERIAL PRIMARY KEY,
    id_produto          INT NOT NULL REFERENCES produto(id_produto),
    id_usuario          INT NOT NULL REFERENCES usuario(id_usuario),
    tipo_movimentacao   VARCHAR(20) NOT NULL CHECK (tipo_movimentacao IN ('ENTRADA', 'SAIDA_VENDA', 'AJUSTE')),
    quantidade          INT NOT NULL CHECK (quantidade > 0),
    data_movimentacao   DATE NOT NULL,
    observacao          TEXT
);