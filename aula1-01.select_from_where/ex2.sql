/*
Ex2: Quantos produtos tem mais de 5 litros?
*/

SELECT * FROM tb_products;

SELECT 
	product_id,
	((product_length_cm * product_height_cm * product_width_cm) / 1000) as litro
FROM tb_products 
where litro > 5
group by product_id 
order by litro asc;