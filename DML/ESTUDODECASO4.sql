USE EC4_CC1M;

#TABELA ALUNOS
INSERT INTO ALUNOS (ALUNO_CPF, ALUNO_NOME, ALUNO_DATANASC, ALUNO_RUA, ALUNO_NUMRUA, ALUNO_BAIRRO, ALUNO_CIDADE, ALUNO_ESTADO, ALUNO_PAIS, ALUNO_CODPOSTAL, ALUNO_TELEFONE, ALUNO_EMAIL)
VALUES 
('111.111.111-11', 'Maria Silva', '2000-05-15', 'Rua das Flores', 100, 'Centro', 'São Paulo', 'SP', 'Brasil', '01000-000', '11999999999', 'maria@email.com'),
('222.222.222-22', 'João Santos', '1995-08-20', 'Avenida Paulista', 2000, 'Jardins', 'São Paulo', 'SP', 'Brasil', '01400-000', '11988888888', 'joao@email.com'),
('333.333.333-33', 'Ana Souza', '1988-12-10', 'Rua XV de Novembro', 500, 'Centro', 'Curitiba', 'PR', 'Brasil', '80000-000', '41999999999', 'ana@email.com'),
('444.444.444-44', 'Carlos Almeida', '1990-03-25', 'Rua A', 123, 'Bairro B', 'Belo Horizonte', 'MG', 'Brasil', '30100-000', '31988888888', 'carlos@email.com'),
('555.555.555-55', 'Fernanda Costa', '1998-07-30', 'Rua C', 456, 'Bairro D', 'Porto Alegre', 'RS', 'Brasil', '90000-000', '51977777777', 'fernanda@email.com');

#TABELA INSTRUTORES
INSERT INTO INSTRUTORES (INSTRU_COD, INSTRU_NOME, INSTRU_TELEFONE, INSTRU_EMAIL)
VALUES 
(1, 'Pedro Oliveira', '11987654321', 'pedro@email.com'),
(2, 'Juliana Matos', '21987654321', 'juliana@email.com'),
(3, 'Renato Lima', '31987654321', 'renato@email.com'),
(4, 'Claudia Mendes', '41987654321', 'claudia@email.com'),
(5, 'Marcos Pinto', '51987654321', 'marcos@email.com');

#TABELA MODALIDADES
INSERT INTO MODALIDADES (MODAL_COD, MODAL_NOME)
VALUES 
(1, 'Musculação'),
(2, 'Yoga'),
(3, 'Crossfit'),
(4, 'Pilates'),
(5, 'Dança');

#TABELA PAGAMENTOS
INSERT INTO PAGAMENTOS (PAG_COD, PAG_STATUS, PAG_VALOR, PAG_DATA, PAG_ALUNO)
VALUES 
(1, 'PAGO', 200.00, '2024-01-01', '111.111.111-11'),
(2, 'PENDENTE', 150.00, '2024-01-15', '222.222.222-22'),
(3, 'PAGO', 180.00, '2024-02-01', '333.333.333-33'),
(4, 'PENDENTE', 220.00, '2024-02-10', '444.444.444-44'),
(5, 'PAGO', 250.00, '2024-03-01', '555.555.555-55');

#TABELA PLANOS_TREINAMENTO
INSERT INTO PLANOS_TREINAMENTO (PT_COD, PT_STATUS, PT_INSTRU, PT_ALUNO)
VALUES 
(1, 'Ativo', 1, '111.111.111-11'),
(2, 'Ativo', 2, '222.222.222-22'),
(3, 'Pendente', 3, '333.333.333-33'),
(4, 'Inativo', 4, '444.444.444-44'),
(5, 'Ativo', 5, '555.555.555-55');

#TABELA AULAS
INSERT INTO AULAS (AULA_COD, AULA_DATA, AULA_HORA, AULA_CAPACIDADE, AULA_INSTRUTOR, AULA_MODALIDADE)
VALUES 
(1, '2024-01-05', '08:00:00', 20, 1, 1),
(2, '2024-01-06', '10:00:00', 15, 2, 2),
(3, '2024-01-07', '09:00:00', 10, 3, 3),
(4, '2024-01-08', '14:00:00', 25, 4, 4),
(5, '2024-01-09', '18:00:00', 30, 5, 5);

#TABELA AULAS_ALUNOS
INSERT INTO AULAS_ALUNOS (ALAN_ALUNO, ALAN_AULA)
VALUES 
('111.111.111-11', 1),
('222.222.222-22', 2),
('333.333.333-33', 3),
('444.444.444-44', 4),
('555.555.555-55', 5);

#TABELA ALUNOS
UPDATE ALUNOS SET ALUNO_CIDADE = 'Rio de Janeiro' WHERE ALUNO_CPF = '111.111.111-11';
UPDATE ALUNOS SET ALUNO_ESTADO = 'RJ' WHERE ALUNO_CPF = '111.111.111-11';

#TABELA INSTRUTORES
UPDATE INSTRUTORES SET INSTRU_NOME = 'Pedro Almeida' WHERE INSTRU_COD = 1;
UPDATE INSTRUTORES SET INSTRU_TELEFONE = '11999999999' WHERE INSTRU_COD = 1;

#TABELA MODALIDADES
UPDATE MODALIDADES SET MODAL_NOME = 'Treinamento Funcional' WHERE MODAL_COD = 1;
UPDATE MODALIDADES SET MODAL_NOME = 'Spinning' WHERE MODAL_COD = 2;

#TABELA PAGAMENTOS
UPDATE PAGAMENTOS SET PAG_STATUS = 'PENDENTE' WHERE PAG_COD = 1;
UPDATE PAGAMENTOS SET PAG_VALOR = 300.00 WHERE PAG_COD = 1;

#TABELA PLANOS_TREINAMENTO
UPDATE PLANOS_TREINAMENTO SET PT_STATUS = 'Inativo' WHERE PT_COD = 1;
UPDATE PLANOS_TREINAMENTO SET PT_INSTRU = 2 WHERE PT_COD = 1;

#TABELA AULAS
UPDATE AULAS SET AULA_CAPACIDADE = 25 WHERE AULA_COD = 1;
UPDATE AULAS SET AULA_DATA = '2024-02-01' WHERE AULA_COD = 1;

#TABELA AULAS_ALUNOS
UPDATE AULAS_ALUNOS SET ALAN_AULA = 2 WHERE ALAN_ALUNO = '111.111.111-11';
UPDATE AULAS_ALUNOS SET ALAN_AULA = 3 WHERE ALAN_ALUNO = '222.222.222-22';

#TABELA ALUNOS
DELETE FROM ALUNOS WHERE ALUNO_CPF = '555.555.555-55';

#TABELA INSTRUTORES
DELETE FROM INSTRUTORES WHERE INSTRU_COD = 5;

#TABELA MODALIDADES
DELETE FROM MODALIDADES WHERE MODAL_COD = 5;

#TABELA PAGAMENTOS
DELETE FROM PAGAMENTOS WHERE PAG_COD = 5;

#TABELA PLANOS_TREINAMENTO
DELETE FROM PLANOS_TREINAMENTO WHERE PT_COD = 5;

#TABELA AULAS
DELETE FROM AULAS WHERE AULA_COD = 5;

#TABELA AULAS_ALUNOS
DELETE FROM AULAS_ALUNOS WHERE ALAN_ALUNO = '555.555.555-55';
