/*
Ex2. Faça uma query que apresente o tamanho médio, 
máximo e mínimo do nome do objeto por categoria
*/

SELECT * from tb_products limit 10;

SELECT
    product_category_name,
    round(avg(product_name_lenght),2) as tamanho_medio_nome,
    min(product_name_lenght) as tamanho_minimo_nome,
    max(product_name_lenght) as tamanho_maximo_nome
FROM tb_products
GROUP BY product_category_name