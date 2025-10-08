USE db_escola_M;

--inserirn um novo registro
INSERT INTO tb_escola(nome, endereco)
VALUES ('Moura Branco', 'Rua Tapajós 1085 - Olímpico');


SELECT * FROM tb_escola


INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES 
('Nathalia',	'81599873826', 'TXKSibn4GD', '2009/01/30', 1),
('Joao',		'81109873826', 'TXqndbn4GD', '2008/06/05', 1);

INSERT INTO tb_aluno(nome, cpf, matricula, data_nasc, id_escola)
VALUES 
('Maria',		'81691873826', 'XUXUzinNHO', '2007/06/10', 1),
('Giulia',		'54781547842', 'TXKSlovBTS', '2008/06/10', 1),
('Aparecida',	'81589073826', 'XUXUibn4GD', '2010/01/02', 1),
('Yoongi',		'84122893826', 'AGUSSDibn7', '2008/06/10', 1),
('Hoseok',		'81233145726', 'JHOPPEbn4G', '2008/06/10', 1);

SELECT * FROM tb_aluno;

INSERT INTO tb_turma(periodo, numeroSala, serie, nometurma, id_escola)
VALUES
('manha', '2', '7b', 'setimo', 1),
('tarde', '5', '1a', 'primeiro', 1),
('tarde', '5', '1a', 'primeiro', 1);

SELECT * FROM tb_turma;

INSERT INTO tb_prova(nome_prof, materia, duracao, nota, data_prova, id_aluno)
VALUES
('maria', 'matematica', '02:30:00', '5', '2025/04/02', '3'),
('maria', 'matematica', '02:30:00', '7', '2025/04/02', '4');

SELECT * FROM tb_prova;

INSERT INTO tb_turma_prova(id_turma, id_prova)
VALUES
(2,2),
(2,1);

SELECT * FROM tb_turma_prova;


UPDATE tb_aluno
SET nome = 'Giuk'
WHERE id = '9';

SELECT * FROM tb_aluno;



DELETE FROM tb_prova
WHERE id = '1';

DELETE FROM tb_prova
WHERE id = '2';

SELECT * FROM tb_prova;