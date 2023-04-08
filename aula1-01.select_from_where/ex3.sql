/*
Ex3: Crie uma coluna nova que contenha a informação de volume em m3
*/

SELECT * FROM tb_products
LIMIT 10;

SELECT 
	product_id	product_category_name,
    product_name_lenght,
	((product_length_cm * product_height_cm * product_width_cm) / 1000000) as m3,
    product_description_lenght,
    product_photos_qty,
    product_weight_g,
    product_length_cm,
    product_height_cm,
    product_width_cm
FROM tb_products 
limit 5;