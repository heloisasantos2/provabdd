CREATE DATABASE prova_22c;
USE prova_22c;

CREATE TABLE fornecedores (
	id_fornecedor INT PRIMARY KEY,
    nome_fornecedor VARCHAR(255),
    contato VARCHAR(255),
    localidade VARCHAR(255)
);

CREATE TABLE compras (
	id_compra INT PRIMARY KEY,
	id_fornecedor INT,
    data_compra INT,
    valor_total  INT 
);

INSERT INTO fornecedores (id_fornecedor, nome_fornecedor, contato, localidade)
VALUES (1, "ABC Suprimentos", "contato@suprimentos.com", "São Paulo");

INSERT INTO fornecedores (id_fornecedor, nome_fornecedor, contato, localidade)
VALUES (2, "Tech Solutions", "contato@techsolutions.com", "Rio de Janeiro");

INSERT INTO fornecedores (id_fornecedor, nome_fornecedor, contato, localidade)
VALUES (3, "Global Import", "contato@globalimport.com", "Curitiba");

INSERT INTO fornecedores (id_fornecedor, nome_fornecedor, contato, localidade)
VALUES (4, "Mega Distribuidora", "contato@megadistribuidora.com", "Belo Horizonte");

INSERT INTO fornecedores (id_fornecedor, nome_fornecedor, contato, localidade)
VALUES (5, "EletroMax", "contato@eletromax.com", "Porto Alegre");


INSERT INTO compras (id_compra, id_fornecedor, data_compra, valor_total)
VALUES (1, 1, 2024-01-15, 15000.00);

INSERT INTO compras (id_compra, id_fornecedor, data_compra, valor_total)
VALUES (2, 2, 2024-02-20,22000.00);

INSERT INTO compras (id_compra, id_fornecedor, data_compra, valor_total)
VALUES (3, 3, 2024-03-10, 18000.00);

INSERT INTO compras (id_compra, id_fornecedor, data_compra, valor_total)
VALUES (1, 1, 2024-04-5, 25000.00);

INSERT INTO compras (id_compra, id_fornecedor, data_compra, valor_total)
VALUES (1, 1, 2024-05-25, 30000.00);

SELECT
	fornecedores.id_fornecedor,
	fornecedores.nome_fornecedor AS fornecedor_nome,
    compras.valor_total
FROM fornecedores
INNER JOIN compras
ON fornecedores.id_fornecedor = compras.id_fornecedor;

SELECT 
	fornecedores.id_fornecedor,
    fornecedores.nome_fornecedor AS fornecedor_nome,
    fornecedores.localidade,
    compras.data_compra
FROM fornecedores
INNER JOIN compras
ON fornecedores.id_fornecedor = compras.id_fornecedor;
    
