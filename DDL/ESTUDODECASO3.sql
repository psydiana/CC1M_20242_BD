CREATE SCHEMA EC3_CC1M;

USE EC3_CC1M;

#CRIANDO A TABELA EMPREGADO
CREATE TABLE IF NOT EXISTS EMPREGADO(
EMPREG_ID INT PRIMARY KEY,
EMPREG_MATRICULA INT NOT NULL,
EMPREG_NOME VARCHAR(50) NOT NULL,
EMPREG_SALARIO DECIMAL(7,2) NOT NULL,
EMPREG_QUALIFICACAO VARCHAR(30) NOT NULL,
EMPREG_DATAADMISSAO DATE NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA VOOS
ALTER TABLE VOOS ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE VOOS MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE VOOS CHANGE DESCRICAO VOO_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE VOOS DROP VOO_DESCRICAO;

CREATE TABLE IF NOT EXISTS FORNECEDOR(
FORN_ID INT PRIMARY KEY,
FORN_CNPJ VARCHAR(14) NOT NULL,
FORN_RAZAOSOCIAL VARCHAR(50) NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA VOOS
ALTER TABLE VOOS ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE VOOS MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE VOOS CHANGE DESCRICAO VOO_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE VOOS DROP VOO_DESCRICAO;

CREATE TABLE IF NOT EXISTS PESSOA_CONTATO(
PC_ID INT PRIMARY KEY,
PC_NOME VARCHAR(50)
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA VOOS
ALTER TABLE VOOS ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE VOOS MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE VOOS CHANGE DESCRICAO VOO_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE VOOS DROP VOO_DESCRICAO;

CREATE TABLE IF NOT EXISTS EMPRESA(
EMPRESA_ID INT PRIMARY KEY,
EMPRESA_CNPJ VARCHAR(14) NOT NULL,
EMPRESA_RAZAOSOCIAL VARCHAR(50) NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA VOOS
ALTER TABLE VOOS ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE VOOS MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE VOOS CHANGE DESCRICAO VOO_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE VOOS DROP VOO_DESCRICAO;

CREATE TABLE IF NOT EXISTS CARGO(
CARGO_ID INT PRIMARY KEY,
CARGO_NOME VARCHAR(50) NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA VOOS
ALTER TABLE VOOS ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE VOOS MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE VOOS CHANGE DESCRICAO VOO_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE VOOS DROP VOO_DESCRICAO;

CREATE TABLE IF NOT EXISTS CLIENTE(
CLIEN_ID INT PRIMARY KEY,
CLIEN_CNPJ VARCHAR(50) NOT NULL,
CLIEN_RAMOATIVIDADE VARCHAR(50) NOT NULL,
CLIEN_DATACADASTRO DATE NOT NULL,
CLIEN_RAZAOSOCIAL VARCHAR(50) NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA CLIENTE
ALTER TABLE CLIENTE ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE CLIENTE MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE CLIENTE CHANGE DESCRICAO CLIEN_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE CLIENTE DROP CLIEN_DESCRICAO;

CREATE TABLE IF NOT EXISTS ENDERECO(
ENDER_ID INT PRIMARY KEY,
ENDER_ESTADO VARCHAR(50) NOT NULL,
ENDER_CIDADE VARCHAR(50) NOT NULL,
ENDER_BAIRRO VARCHAR(50) NOT NULL,
ENDER_CEP VARCHAR(10) NOT NULL,
ENDER_COMPLEMENTO VARCHAR(50),
ENDER_LOGRADOURO VARCHAR(50) NOT NULL,
ENDER_NUMERO INT
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA ENDERECO
ALTER TABLE ENDERECO ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE ENDERECO MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE ENDERECO CHANGE DESCRICAO ENDER_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE ENDERECO DROP ENDER_DESCRICAO;

CREATE TABLE IF NOT EXISTS TIPO_ENDERECO(
TPEN_ID INT PRIMARY KEY,
TPEN_NOME VARCHAR(50) NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA TIPO_ENDERECO
ALTER TABLE TIPO_ENDERECO ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE TIPO_ENDERECO MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE TIPO_ENDERECO CHANGE DESCRICAO TPEN_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE TIPO_ENDERECO DROP TPEN_DESCRICAO;

CREATE TABLE IF NOT EXISTS TELEFONE(
TELE_ID INT PRIMARY KEY,
TELE_NUMERO VARCHAR(30) NOT NULL,
TELE_NOME VARCHAR(50) NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA TELEFONE
ALTER TABLE TELEFONE ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE TELEFONE MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE TELEFONE CHANGE DESCRICAO TELE_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE TELEFONE DROP TELE_DESCRICAO;

CREATE TABLE IF NOT EXISTS ENCOMENDA(
ENCO_ID INT PRIMARY KEY,
ENCO_DATAINCLUSAO DATE NOT NULL,
ENCO_VALORTOTAL DECIMAL(6,2) NOT NULL,
ENCO_VALORDESCONTO DECIMAL(6,2) NOT NULL,
ENCO_VALORLIQUIDO DECIMAL(6,2) NOT NULL,
ENCO_QUANTPARCELAS INT NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA ENCOMENDA
ALTER TABLE ENCOMENDA ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE ENCOMENDA MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE ENCOMENDA CHANGE DESCRICAO ENCO_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE ENCOMENDA DROP ENCO_DESCRICAO;

CREATE TABLE IF NOT EXISTS PRODUTO(
PROD_ID INT PRIMARY KEY,
PROD_NOME VARCHAR(50) NOT NULL,
PROD_COR VARCHAR(30) NOT NULL,
PROD_DIMENSOES VARCHAR(30) NOT NULL,
PROD_PESO VARCHAR(20) NOT NULL,
PROD_PRECO DECIMAL(6,2) NOT NULL,
PROD_TEMPOFABRI TIME NOT NULL,
PROD_DESENHO BLOB NOT NULL,
PROD_HORASMAOOBRA TIME NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA PRODUTO
ALTER TABLE PRODUTO ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE PRODUTO MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE PRODUTO CHANGE DESCRICAO PROD_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE PRODUTO DROP PROD_DESCRICAO;

CREATE TABLE IF NOT EXISTS COMPONENTE(
COMP_ID INT PRIMARY KEY,
COMP_NOME VARCHAR(50) NOT NULL,
COMP_QUANTESTQ INT NOT NULL,
COMP_PRECOUNI DECIMAL(6,2) NOT NULL,
COMP_UNIDADE VARCHAR(10) NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA COMPONENTE
ALTER TABLE COMPONENTE ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE COMPONENTE MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE COMPONENTE CHANGE DESCRICAO COMP_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE COMPONENTE DROP COMP_DESCRICAO;

CREATE TABLE IF NOT EXISTS TIPO_COMPONENTE(
TPCM_ID INT PRIMARY KEY,
TPCM_NOME VARCHAR(50) NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA TIPO_COMPONENTE
ALTER TABLE TIPO_COMPONENTE ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE TIPO_COMPONENTE MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE TIPO_COMPONENTE CHANGE DESCRICAO TPCM_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE TIPO_COMPONENTE DROP TPCM_DESCRICAO;

CREATE TABLE IF NOT EXISTS MAQUINA(
MAQ_ID INT PRIMARY KEY,
MAQ_TEMPOVIDA TIME NOT NULL,
MAQ_DATACOMPRA DATE NOT NULL,
MAQ_DATAFIMGARANTIA DATE NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA MAQUINA
ALTER TABLE MAQUINA ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE MAQUINA MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE MAQUINA CHANGE DESCRICAO MAQ_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE MAQUINA DROP MAQ_DESCRICAO;

CREATE TABLE IF NOT EXISTS REGISTRO_MANUTENCAO(
RM_ID INT PRIMARY KEY,
RM_DATA DATE NOT NULL,
RM_DESCRICAO VARCHAR(100) NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA REGISTRO_MANUTENCAO
ALTER TABLE REGISTRO_MANUTENCAO ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE REGISTRO_MANUTENCAO MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE REGISTRO_MANUTENCAO CHANGE DESCRICAO RM_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE REGISTRO_MANUTENCAO DROP RM_DESCRICAO;

CREATE TABLE IF NOT EXISTS REGISTRO_SUPRIMENTOS(
RS_ID INT PRIMARY KEY,
RS_QUANT INT NOT NULL,
RS_DATANECESSIDADE DATE NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA REGISTRO_SUPRIMENTOS
ALTER TABLE REGISTRO_SUPRIMENTOS ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE REGISTRO_SUPRIMENTOS MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE REGISTRO_SUPRIMENTOS CHANGE DESCRICAO RS_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE REGISTRO_SUPRIMENTOS DROP RS_DESCRICAO;

CREATE TABLE IF NOT EXISTS RECURSOS_ESPECIFICOS(
RE_ID INT PRIMARY KEY,
RE_QUANTNECESSIDADE INT NOT NULL,
RE_UNIDADE VARCHAR(10) NOT NULL,
RE_TEMPOUSO TIME NOT NULL,
RE_HORASMAOOBRA TIME NOT NULL
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA RECURSOS_ESPECIFICOS
ALTER TABLE RECURSOS_ESPECIFICOS ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE RECURSOS_ESPECIFICOS MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE RECURSOS_ESPECIFICOS CHANGE DESCRICAO RE_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE RECURSOS_ESPECIFICOS DROP RE_DESCRICAO;

CREATE TABLE IF NOT EXISTS PRODUTO_MAQUINA(
PRMQ_MAQUINA INT,
PRMQ_PRODUTO INT,
PRIMARY KEY (PRMQ_MAQUINA, PRMQ_PRODUTO),
CONSTRAINT FK_MAQUINA FOREIGN KEY (PRMQ_MAQUINA) REFERENCES MAQUINA(MAQ_ID),
CONSTRAINT FK_PRODUTO FOREIGN KEY (PRMQ_PRODUTO) REFERENCES PRODUTO(PROD_ID)
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA PRODUTO_MAQUINA
ALTER TABLE PRODUTO_MAQUINA ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE PRODUTO_MAQUINA MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE PRODUTO_MAQUINA CHANGE DESCRICAO PRMQ_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE PRODUTO_MAQUINA DROP PRMQ_DESCRICAO;

CREATE TABLE IF NOT EXISTS FORNECEDOR_COMPONENTE(
FRCM_FORNECEDOR INT,
FRCM_COMPONENTE INT,
PRIMARY KEY (FRCM_FORNECEDOR, FRCM_COMPONENTE),
CONSTRAINT FK_FORNECEDOR FOREIGN KEY (FRCM_FORNECEDOR) REFERENCES FORNECEDOR(FORN_ID),
CONSTRAINT FK_COMPONENTE FOREIGN KEY (FRCM_COMPONENTE) REFERENCES COMPONENTE(COMP_ID)
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA FORNECEDOR_COMPONENTE
ALTER TABLE FORNECEDOR_COMPONENTE ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE FORNECEDOR_COMPONENTE MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE FORNECEDOR_COMPONENTE CHANGE DESCRICAO FRCM_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE FORNECEDOR_COMPONENTE DROP FRCM_DESCRICAO;

CREATE TABLE IF NOT EXISTS FORNECEDOR_EMPRESA(
FREM_FORNECEDOR INT,
FREM_EMPRESA INT,
PRIMARY KEY (FREM_FORNECEDOR, FREM_EMPRESA),
CONSTRAINT FK_FORNECEDOR_FREM FOREIGN KEY (FREM_FORNECEDOR) REFERENCES FORNECEDOR(FORN_ID),
CONSTRAINT FK_EMPRESA FOREIGN KEY (FREM_EMPRESA) REFERENCES EMPRESA(EMPRESA_ID)
);

#ESTABELECENDO COMANDOS DE ALTER NA TABELA FORNECEDOR_EMPRESA
ALTER TABLE FORNECEDOR_EMPRESA ADD COLUMN DESCRICAO VARCHAR(100) NOT NULL;
ALTER TABLE FORNECEDOR_EMPRESA MODIFY DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE FORNECEDOR_EMPRESA CHANGE DESCRICAO FREM_DESCRICAO VARCHAR(75) NOT NULL;
ALTER TABLE FORNECEDOR_EMPRESA DROP FREM_DESCRICAO;

CREATE TABLE IF NOT EXISTS SHADOWHEART(
SHADOWHEART_COD INT PRIMARY KEY
);

DROP TABLE SHADOWHEART;
