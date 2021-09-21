use db_cidade_das_carnes;


SELECT * FROM tb_categoria;

SELECT * FROM TB_PRODUTOS;

SELECT p.nome, p.preco,p.qtproduto,c.descricao  
FROM tb_produtos p 
			join tb_categoria c on p.categoria_id=c.id;
            
SELECT p.nome, p.preco,p.qtproduto,preco*qtproduto as preco_estoque,ifnull(c.descricao,'Sem categoria') as `Descrição` 
FROM tb_produtos p 
	left join tb_categoria c on p.categoria_id=c.id;
    
    
select * from tb_produtos where LENGTH(nome)=5;