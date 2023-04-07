/*
Ex1: Quantos produtos temos da categoria 'artes'?
*/

SELECT *
FROM tb_products tp ;

SELECT 
	product_category_name,
	count(*) as quantidade_artes
FROM tb_products tp 
where product_category_name = 'artes'
group by product_category_name ;