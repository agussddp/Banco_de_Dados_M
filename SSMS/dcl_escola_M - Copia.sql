--Cria um login no ssms
CREATE LOGIN Maria WITH PASSWORD = '1006';

--Tabela ficticia
CREATE TABLE Usuario (
id INT NOT NULL
);
--cria um usuário dentro do banco de dados
CREATE USER Maria FOR LOGIN Maria;

--Concede acesso ao usuario
GRANT SELECT TO Maria;