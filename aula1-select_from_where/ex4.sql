/*
Ex4: Quantos produtos de 'beleza_saude' com menos de 1 litro?
*/

.schema tb_products

SELECT * FROM tb_products limit 5;

SELECT
    product_category_name,
    count(*) as qtd
    
FROM tb_products
WHERE product_category_name = 'beleza_saude' 
    AND ((product_length_cm * product_height_cm * product_width_cm) / 1000) < 1
LIMIT 5;