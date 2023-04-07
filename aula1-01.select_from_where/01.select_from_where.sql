SELECT 
	seller_id,
	seller_state 
FROM tb_sellers
limit 50;

SELECT *
FROM tb_products;

/*
 Mostrar id, categoria e qtd de produtos onde a 
 categoria é de 'bebê' e qtd produtos maior que 1
 */
SELECT 
	product_id , 
	product_category_name,
	product_photos_qty 
FROM tb_products 
WHERE product_category_name = 'bebes'
	AND product_photos_qty > 1;


/*
 Mostrar id, categoria e qtd de produtos onde a 
 categoria é de 'bebê' ou categoria de perfumaria com qtd produtos maior que 1
 */
SELECT 
	product_id , 
	product_category_name,
	product_photos_qty 
FROM tb_products 
WHERE 
	(product_category_name = 'bebes'
	OR product_category_name = 'perfumaria')
	AND product_photos_qty > 1;

/*
 bebê acima de 1 foto
 ou perfumaria acima de 5 fotos
 */

SELECT 
	product_id , 
	product_category_name,
	product_photos_qty 
FROM tb_products 
WHERE 
	(product_category_name = 'bebes' AND  product_photos_qty > 1)
	OR  (product_category_name = 'perfumaria' AND product_photos_qty > 5);
	
	