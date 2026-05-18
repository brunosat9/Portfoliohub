-- Projeto academico: Banco de Dados para Farmacia
-- Autor: Bruno Soares

CREATE TABLE cliente (
    id_cliente INTEGER PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE medicamento (
    id_medicamento INTEGER PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    fabricante VARCHAR(100),
    preco DECIMAL(10, 2) NOT NULL,
    quantidade_estoque INTEGER NOT NULL
);

CREATE TABLE venda (
    id_venda INTEGER PRIMARY KEY,
    id_cliente INTEGER NOT NULL,
    data_venda DATE NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE item_venda (
    id_item INTEGER PRIMARY KEY,
    id_venda INTEGER NOT NULL,
    id_medicamento INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    valor_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda),
    FOREIGN KEY (id_medicamento) REFERENCES medicamento(id_medicamento)
);
