/*
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.
*/


CREATE DATABASE DB_RH;

USE DB_RH;

CREATE TABLE FUNCIONARIES(
ID BIGINT auto_increment,
NOME VARCHAR(100),
SALARIO		DECIMAL(10,2) NOT NULL,
DATA_NASCIMENTO DATE NOT NULL,
DATA_ADMISSAO	DATE NOT NULL,
DATA_DEMISSAO	DATE,
CONSTRAINT PK_FUNCIONARIES PRIMARY KEY (ID)
);

INSERT INTO FUNCIONARIES(NOME,SALARIO,DATA_NASCIMENTO,DATA_ADMISSAO,DATA_DEMISSAO)
VALUES ('lUIS FELIPE',2500.0,'19991207','20210102','20210913');
INSERT INTO FUNCIONARIES(NOME,SALARIO,DATA_NASCIMENTO,DATA_ADMISSAO,DATA_DEMISSAO)
VALUES ('Carlos',1500.0,'19910608','20210102',null);
INSERT INTO FUNCIONARIES(NOME,SALARIO,DATA_NASCIMENTO,DATA_ADMISSAO,DATA_DEMISSAO)
VALUES ('Robson',1100.0,'19891207','20210102',null);
INSERT INTO FUNCIONARIES(NOME,SALARIO,DATA_NASCIMENTO,DATA_ADMISSAO,DATA_DEMISSAO)
VALUES ('Fernando',800.0,'19970104','20210102',null);
INSERT INTO FUNCIONARIES(NOME,SALARIO,DATA_NASCIMENTO,DATA_ADMISSAO,DATA_DEMISSAO)
VALUES ('Kleber',4000.0,'19901211','20210102','20210609');

select NOME, 
	   TIMESTAMPDIFF(YEAR,DATA_NASCIMENTO,CURDATE()) AS IDADE, 
       SALARIO,DATA_ADMISSAO,DATA_DEMISSAO 
from funcionaries;


select * from funcionaries where salario > 2000;


select * from funcionaries where salario < 2000;

update funcionaries set salario = 3000 where id  in (1,2);

select * from funcionaries where id  in (1,2);

update funcionaries set salario = 0 where data_demissao is not null ;