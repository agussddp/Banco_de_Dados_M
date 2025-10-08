--Comando que cria um novo Banco de Dados

CREATE DATABASE db_escola_M;

--Comando que separa em blocos
GO

USE db_escola_M;

--Comando que cria tabela

CREATE TABLE tb_escola(
	id			INT IDENTITY	(1,1) PRIMARY KEY,
	nome		NVARCHAR		(255)				NOT NULL,
	endereco	NVARCHAR		(255)				NOT NULL,
);
GO

--Consultar tabelas
SELECT * FROM tb_escola;

CREATE TABLE tb_aluno(
	id			INT						IDENTITY(1,1)	PRIMARY KEY,
	nome		NVARCHAR		(255)					NOT NULL,
	cpf			NCHAR			(11)	UNIQUE			NOT NULL,
	matricula	NVARCHAR		(10)	UNIQUE			NOT NULL,
	data_nasc	DATE,
	id_escola	INT										NOT NULL
	
	FOREIGN KEY (id_escola) REFERENCES tb_escola(id),
);  

SELECT * FROM tb_aluno;

CREATE TABLE tb_prova(
	id			INT						IDENTITY(1,1)	PRIMARY KEY,
	nome_prof	NVARCHAR		(150)	NOT NULL,
	materia		NVARCHAR		(100)	NOT NULL,	
	duracao		TIME					NOT NULL,
	nota		DECIMAL			(3,1)	NOT NULL,
	data_prova	DATE					NOT NULL,
	
	id_aluno	INT,						

	FOREIGN KEY (id_aluno) REFERENCES tb_aluno(id),

);

SELECT * FROM tb_prova;

CREATE TABLE tb_turma(
	id				INT				IDENTITY(1,1)	PRIMARY KEY,
	periodo			NCHAR(5)		NOT NULL,
	numeroSala		INT	,	
	serie			NVARCHAR(100)	,	
	nometurma		NVARCHAR(100)	NOT NULL,
	id_escola		INT				NOT NULL,

	FOREIGN KEY (id_escola) REFERENCES tb_escola(id),
);

SELECT * FROM tb_turma;

CREATE TABLE tb_turma_prova(
	id_turma	INT  NOT NULL,
	id_prova	INT  NOT NULL,

	PRIMARY KEY(id_turma,id_prova)
);

SELECT * FROM  tb_turma_prova;


DROP TABLE tb_turma;


DROP TABLE tb_prova;