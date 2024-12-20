USE EC3_CC1M;

#Tabela: EMPREGADO
#Inserções
INSERT INTO EMPREGADO (EMPREG_ID, EMPREG_MATRICULA, EMPREG_NOME, EMPREG_SALARIO, EMPREG_QUALIFICACAO, EMPREG_DATAADMISSAO)
VALUES (1, 12345, 'João Silva', 5000.00, 'Engenheiro', '2020-01-15');

INSERT INTO EMPREGADO (EMPREG_ID, EMPREG_MATRICULA, EMPREG_NOME, EMPREG_SALARIO, EMPREG_QUALIFICACAO, EMPREG_DATAADMISSAO)
VALUES (2, 12346, 'Maria Oliveira', 4800.00, 'Analista', '2019-03-10');

INSERT INTO EMPREGADO (EMPREG_ID, EMPREG_MATRICULA, EMPREG_NOME, EMPREG_SALARIO, EMPREG_QUALIFICACAO, EMPREG_DATAADMISSAO)
VALUES (3, 12347, 'Carlos Souza', 5200.00, 'Gerente', '2021-07-01');

INSERT INTO EMPREGADO (EMPREG_ID, EMPREG_MATRICULA, EMPREG_NOME, EMPREG_SALARIO, EMPREG_QUALIFICACAO, EMPREG_DATAADMISSAO)
VALUES (4, 12348, 'Ana Santos', 4500.00, 'Técnico', '2022-02-20');

INSERT INTO EMPREGADO (EMPREG_ID, EMPREG_MATRICULA, EMPREG_NOME, EMPREG_SALARIO, EMPREG_QUALIFICACAO, EMPREG_DATAADMISSAO)
VALUES (5, 12349, 'Paulo Lima', 4700.00, 'Supervisor', '2018-11-30');

#Atualizações
UPDATE EMPREGADO
SET EMPREG_SALARIO = EMPREG_SALARIO * 1.10
WHERE EMPREG_DATAADMISSAO < '2020-01-01';

UPDATE EMPREGADO
SET EMPREG_QUALIFICACAO = 'Especialista'
WHERE EMPREG_SALARIO > 5000.00;

#Exclusão
DELETE FROM EMPREGADO
WHERE EMPREG_ID = 5;

#Tabela: FORNECEDOR
#Inserções
INSERT INTO FORNECEDOR (FORN_ID, FORN_CNPJ, FORN_RAZAOSOCIAL) VALUES (1, '12345678000199', 'Fornecedor A');
INSERT INTO FORNECEDOR (FORN_ID, FORN_CNPJ, FORN_RAZAOSOCIAL) VALUES (2, '98765432000188', 'Fornecedor B');
INSERT INTO FORNECEDOR (FORN_ID, FORN_CNPJ, FORN_RAZAOSOCIAL) VALUES (3, '45678912000177', 'Fornecedor C');
INSERT INTO FORNECEDOR (FORN_ID, FORN_CNPJ, FORN_RAZAOSOCIAL) VALUES (4, '78912345000166', 'Fornecedor D');
INSERT INTO FORNECEDOR (FORN_ID, FORN_CNPJ, FORN_RAZAOSOCIAL) VALUES (5, '32165498000155', 'Fornecedor E');

#Atualizações
UPDATE FORNECEDOR
SET FORN_RAZAOSOCIAL = 'Fornecedor X'
WHERE FORN_ID = 1;

UPDATE FORNECEDOR
SET FORN_CNPJ = '99999999000111'
WHERE FORN_ID = 5;

#Exclusão
DELETE FROM FORNECEDOR
WHERE FORN_ID = 3;

#Tabela: PESSOA_CONTATO
#Inserções
INSERT INTO PESSOA_CONTATO (PC_ID, PC_NOME) VALUES (1, 'Contato A');
INSERT INTO PESSOA_CONTATO (PC_ID, PC_NOME) VALUES (2, 'Contato B');
INSERT INTO PESSOA_CONTATO (PC_ID, PC_NOME) VALUES (3, 'Contato C');
INSERT INTO PESSOA_CONTATO (PC_ID, PC_NOME) VALUES (4, 'Contato D');
INSERT INTO PESSOA_CONTATO (PC_ID, PC_NOME) VALUES (5, 'Contato E');

#Atualizações
UPDATE PESSOA_CONTATO
SET PC_NOME = 'Contato Atualizado A'
WHERE PC_ID = 1;

UPDATE PESSOA_CONTATO
SET PC_NOME = 'Contato Atualizado B'
WHERE PC_ID = 2;

#Exclusão
DELETE FROM PESSOA_CONTATO
WHERE PC_ID = 5;

#Tabela: EMPRESA
#Inserções
INSERT INTO EMPRESA (EMPRESA_ID, EMPRESA_CNPJ, EMPRESA_RAZAOSOCIAL) VALUES (1, '11111111000111', 'Empresa A');
INSERT INTO EMPRESA (EMPRESA_ID, EMPRESA_CNPJ, EMPRESA_RAZAOSOCIAL) VALUES (2, '22222222000122', 'Empresa B');
INSERT INTO EMPRESA (EMPRESA_ID, EMPRESA_CNPJ, EMPRESA_RAZAOSOCIAL) VALUES (3, '33333333000133', 'Empresa C');
INSERT INTO EMPRESA (EMPRESA_ID, EMPRESA_CNPJ, EMPRESA_RAZAOSOCIAL) VALUES (4, '44444444000144', 'Empresa D');
INSERT INTO EMPRESA (EMPRESA_ID, EMPRESA_CNPJ, EMPRESA_RAZAOSOCIAL) VALUES (5, '55555555000155', 'Empresa E');

#Atualizações
UPDATE EMPRESA
SET EMPRESA_RAZAOSOCIAL = 'Empresa X'
WHERE EMPRESA_ID = 1;

UPDATE EMPRESA
SET EMPRESA_CNPJ = '99999999000199'
WHERE EMPRESA_ID = 5;

#Exclusão
DELETE FROM EMPRESA
WHERE EMPRESA_ID = 3;

#Tabela: CARGO
#Inserções
INSERT INTO CARGO (CARGO_ID, CARGO_NOME) VALUES (1, 'Gerente');
INSERT INTO CARGO (CARGO_ID, CARGO_NOME) VALUES (2, 'Analista');
INSERT INTO CARGO (CARGO_ID, CARGO_NOME) VALUES (3, 'Engenheiro');
INSERT INTO CARGO (CARGO_ID, CARGO_NOME) VALUES (4, 'Técnico');
INSERT INTO CARGO (CARGO_ID, CARGO_NOME) VALUES (5, 'Supervisor');

#Atualizações
UPDATE CARGO
SET CARGO_NOME = 'Gestor'
WHERE CARGO_ID = 1;

UPDATE CARGO
SET CARGO_NOME = 'Especialista'
WHERE CARGO_ID = 3;

#Exclusão
DELETE FROM CARGO
WHERE CARGO_ID = 5;

#Tabela: CLIENTE
#Inserções
INSERT INTO CLIENTE (CLIEN_ID, CLIEN_CNPJ, CLIEN_RAMOATIVIDADE, CLIEN_DATACADASTRO, CLIEN_RAZAOSOCIAL)
VALUES (1, '11111111000111', 'Comércio', '2021-01-01', 'Cliente A');
INSERT INTO CLIENTE (CLIEN_ID, CLIEN_CNPJ, CLIEN_RAMOATIVIDADE, CLIEN_DATACADASTRO, CLIEN_RAZAOSOCIAL)
VALUES (2, '22222222000122', 'Serviços', '2020-06-15', 'Cliente B');
INSERT INTO CLIENTE (CLIEN_ID, CLIEN_CNPJ, CLIEN_RAMOATIVIDADE, CLIEN_DATACADASTRO, CLIEN_RAZAOSOCIAL)
VALUES (3, '33333333000133', 'Indústria', '2019-03-10', 'Cliente C');
INSERT INTO CLIENTE (CLIEN_ID, CLIEN_CNPJ, CLIEN_RAMOATIVIDADE, CLIEN_DATACADASTRO, CLIEN_RAZAOSOCIAL)
VALUES (4, '44444444000144', 'Agronegócio', '2018-11-20', 'Cliente D');
INSERT INTO CLIENTE (CLIEN_ID, CLIEN_CNPJ, CLIEN_RAMOATIVIDADE, CLIEN_DATACADASTRO, CLIEN_RAZAOSOCIAL)
VALUES (5, '55555555000155', 'Tecnologia', '2022-08-05', 'Cliente E');

#Atualizações
UPDATE CLIENTE
SET CLIEN_RAMOATIVIDADE = 'Tecnologia e Serviços'
WHERE CLIEN_ID = 5;

UPDATE CLIENTE
SET CLIEN_RAZAOSOCIAL = 'Cliente Atualizado C'
WHERE CLIEN_ID = 3;

#Exclusão
DELETE FROM CLIENTE
WHERE CLIEN_ID = 4;

#Tabela: ENDERECO
#Inserções
INSERT INTO ENDERECO (ENDER_ID, ENDER_ESTADO, ENDER_CIDADE, ENDER_BAIRRO, ENDER_CEP, ENDER_COMPLEMENTO, ENDER_LOGRADOURO, ENDER_NUMERO)
VALUES (1, 'SP', 'São Paulo', 'Centro', '01000-000', 'Apto 101', 'Rua A', 100);

INSERT INTO ENDERECO (ENDER_ID, ENDER_ESTADO, ENDER_CIDADE, ENDER_BAIRRO, ENDER_CEP, ENDER_COMPLEMENTO, ENDER_LOGRADOURO, ENDER_NUMERO)
VALUES (2, 'RJ', 'Rio de Janeiro', 'Zona Sul', '20000-000', NULL, 'Avenida B', 200);

INSERT INTO ENDERECO (ENDER_ID, ENDER_ESTADO, ENDER_CIDADE, ENDER_BAIRRO, ENDER_CEP, ENDER_COMPLEMENTO, ENDER_LOGRADOURO, ENDER_NUMERO)
VALUES (3, 'MG', 'Belo Horizonte', 'Savassi', '30000-000', 'Cobertura', 'Praça C', 300);

INSERT INTO ENDERECO (ENDER_ID, ENDER_ESTADO, ENDER_CIDADE, ENDER_BAIRRO, ENDER_CEP, ENDER_COMPLEMENTO, ENDER_LOGRADOURO, ENDER_NUMERO)
VALUES (4, 'RS', 'Porto Alegre', 'Moinhos', '40000-000', NULL, 'Rua D', 400);

INSERT INTO ENDERECO (ENDER_ID, ENDER_ESTADO, ENDER_CIDADE, ENDER_BAIRRO, ENDER_CEP, ENDER_COMPLEMENTO, ENDER_LOGRADOURO, ENDER_NUMERO)
VALUES (5, 'PR', 'Curitiba', 'Batel', '50000-000', 'Sala Comercial', 'Avenida E', 500);

#Atualizações
UPDATE ENDERECO
SET ENDER_COMPLEMENTO = 'Atualizado para Casa'
WHERE ENDER_ID = 2;

UPDATE ENDERECO
SET ENDER_NUMERO = 1500
WHERE ENDER_CEP = '01000-000';

#Exclusão
DELETE FROM ENDERECO
WHERE ENDER_ID = 4;

#Tabela: TIPO_ENDERECO
#Inserções
INSERT INTO TIPO_ENDERECO (TPEN_ID, TPEN_NOME) VALUES (1, 'Residencial');
INSERT INTO TIPO_ENDERECO (TPEN_ID, TPEN_NOME) VALUES (2, 'Comercial');
INSERT INTO TIPO_ENDERECO (TPEN_ID, TPEN_NOME) VALUES (3, 'Industrial');
INSERT INTO TIPO_ENDERECO (TPEN_ID, TPEN_NOME) VALUES (4, 'Rural');
INSERT INTO TIPO_ENDERECO (TPEN_ID, TPEN_NOME) VALUES (5, 'Outro');

#Atualizações
UPDATE TIPO_ENDERECO
SET TPEN_NOME = 'Residencial Atualizado'
WHERE TPEN_ID = 1;

UPDATE TIPO_ENDERECO
SET TPEN_NOME = 'Comercial Atualizado'
WHERE TPEN_ID = 2;

#Exclusão
DELETE FROM TIPO_ENDERECO
WHERE TPEN_ID = 5;

#Tabela: TELEFONE
#Inserções
INSERT INTO TELEFONE (TELE_ID, TELE_NUMERO, TELE_NOME) VALUES (1, '(11) 99999-1111', 'Telefone Residencial');
INSERT INTO TELEFONE (TELE_ID, TELE_NUMERO, TELE_NOME) VALUES (2, '(21) 99999-2222', 'Telefone Comercial');
INSERT INTO TELEFONE (TELE_ID, TELE_NUMERO, TELE_NOME) VALUES (3, '(31) 99999-3333', 'Telefone Celular');
INSERT INTO TELEFONE (TELE_ID, TELE_NUMERO, TELE_NOME) VALUES (4, '(41) 99999-4444', 'Telefone Empresarial');
INSERT INTO TELEFONE (TELE_ID, TELE_NUMERO, TELE_NOME) VALUES (5, '(51) 99999-5555', 'Telefone Pessoal');

#Atualizações
UPDATE TELEFONE
SET TELE_NOME = 'Celular Atualizado'
WHERE TELE_ID = 3;

UPDATE TELEFONE
SET TELE_NUMERO = '(61) 99999-0000'
WHERE TELE_ID = 2;

#Exclusão
DELETE FROM TELEFONE
WHERE TELE_ID = 5;

#Tabela: ENCOMENDA
#Inserções
INSERT INTO ENCOMENDA (ENCO_ID, ENCO_DATAINCLUSAO, ENCO_VALORTOTAL, ENCO_VALORDESCONTO, ENCO_VALORLIQUIDO, ENCO_QUANTPARCELAS)
VALUES (1, '2023-01-01', 1000.00, 100.00, 900.00, 10);

INSERT INTO ENCOMENDA (ENCO_ID, ENCO_DATAINCLUSAO, ENCO_VALORTOTAL, ENCO_VALORDESCONTO, ENCO_VALORLIQUIDO, ENCO_QUANTPARCELAS)
VALUES (2, '2023-02-01', 1500.00, 150.00, 1350.00, 15);

INSERT INTO ENCOMENDA (ENCO_ID, ENCO_DATAINCLUSAO, ENCO_VALORTOTAL, ENCO_VALORDESCONTO, ENCO_VALORLIQUIDO, ENCO_QUANTPARCELAS)
VALUES (3, '2023-03-01', 2000.00, 200.00, 1800.00, 20);

INSERT INTO ENCOMENDA (ENCO_ID, ENCO_DATAINCLUSAO, ENCO_VALORTOTAL, ENCO_VALORDESCONTO, ENCO_VALORLIQUIDO, ENCO_QUANTPARCELAS)
VALUES (4, '2023-04-01', 500.00, 50.00, 450.00, 5);

INSERT INTO ENCOMENDA (ENCO_ID, ENCO_DATAINCLUSAO, ENCO_VALORTOTAL, ENCO_VALORDESCONTO, ENCO_VALORLIQUIDO, ENCO_QUANTPARCELAS)
VALUES (5, '2023-05-01', 2500.00, 250.00, 2250.00, 25);

#Atualizações
UPDATE ENCOMENDA
SET ENCO_VALORDESCONTO = 300.00
WHERE ENCO_ID = 3;

UPDATE ENCOMENDA
SET ENCO_QUANTPARCELAS = 12
WHERE ENCO_ID = 1;

#Exclusão
DELETE FROM ENCOMENDA
WHERE ENCO_ID = 4;

#Tabela: PRODUTO
#Inserções
INSERT INTO PRODUTO (PROD_ID, PROD_DESCRICAO, PROD_PRECO) VALUES (1, 'Produto A', 100.00);
INSERT INTO PRODUTO (PROD_ID, PROD_DESCRICAO, PROD_PRECO) VALUES (2, 'Produto B', 200.00);
INSERT INTO PRODUTO (PROD_ID, PROD_DESCRICAO, PROD_PRECO) VALUES (3, 'Produto C', 300.00);
INSERT INTO PRODUTO (PROD_ID, PROD_DESCRICAO, PROD_PRECO) VALUES (4, 'Produto D', 400.00);
INSERT INTO PRODUTO (PROD_ID, PROD_DESCRICAO, PROD_PRECO) VALUES (5, 'Produto E', 500.00);

#Atualizações
UPDATE PRODUTO
SET PROD_PRECO = 150.00
WHERE PROD_ID = 1;

UPDATE PRODUTO
SET PROD_DESCRICAO = 'Produto Atualizado D'
WHERE PROD_ID = 4;

#Exclusão
DELETE FROM PRODUTO
WHERE PROD_ID = 5;
