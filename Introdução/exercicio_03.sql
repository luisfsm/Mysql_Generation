/*
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.
Atividade 3
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
*/



CREATE DATABASE DB_ESCOLA;

USE DB_ESCOLA;

CREATE TABLE TB_ALUNO(

ID BIGINT PRIMARY KEY AUTO_INCREMENT,
NOME_ALUNO  VARCHAR(50) NOT NULL ,
TURMA 	    CHAR(6) NOT NULL,
AV1		    DECIMAL(10,2) check( AV1 >=0 and AV1 <=10 ) DEFAULT 0,
AV2		    DECIMAL(10,2) check( AV2 >=0 and AV2 <=10 ) DEFAULT 0,
AV3		    DECIMAL(10,2) check( AV3 >=0 and AV3 <=10)  DEFAULT 0,
AV4		    DECIMAL(10,2) check( AV4 >=0 and AV4 <=10 ) DEFAULT 0,		
MATRICULA   DATETIME DEFAULT '20210101' 
);

INSERT INTO TB_ALUNO(NOME_ALUNO, TURMA, AV1,AV2,AV3,AV4) VALUES('lUIS','240',7.5,8.5,10.0,6.0);
INSERT INTO TB_ALUNO(NOME_ALUNO, TURMA, AV1,AV2,AV3,AV4) VALUES('Ana','230',9,9.5,10.0,9.0);
INSERT INTO TB_ALUNO(NOME_ALUNO, TURMA, AV1,AV2,AV3,AV4) VALUES('Maria','240',8.5,8.5,10.0,4.0);
INSERT INTO TB_ALUNO(NOME_ALUNO, TURMA, AV1,AV2,AV3,AV4)  VALUES('Fernando','228',7.5,8.5,6.0,6.0);
INSERT INTO TB_ALUNO(NOME_ALUNO, TURMA, AV1,AV2,AV3,AV4) VALUES('Rubens','232',9.5,4.5,5.0,6.0);
INSERT INTO TB_ALUNO(NOME_ALUNO, TURMA, AV1,AV2,AV3,AV4) VALUES('Jonatas','220',6.5,7.5,6.0,6.0);



select * from tb_aluno;


SELECT TURMA,NOME_ALUNO, 
		CASE 
        when SUM(AV1+AV2+AV3+AV4)/4  >6.5 then concat("Alune Aprovade !! Média :", format(SUM(AV1+AV2+AV3+AV4)/4,2))
        else  concat('Alune reprovade !!! Média :',format(SUM(AV1+AV2+AV3+AV4)/4,2))
        end AS MEDIA  FROM TB_ALUNO 
GROUP BY TURMA,NOME_ALUNO;


UPDATE TB_ALUNO SET NOME_ALUNO='Luis' where id =1 ;
