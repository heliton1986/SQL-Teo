/*
Ex1. Faça uma query que apresente o tamanho médio,
 máximo e mínimo da descrição do objeto por categoria
*/

SELECT
    *
FROM tb_products limit 10

SELECT
    product_category_name,
    round(avg(product_description_lenght),2) as tamanho_medio,
    min(product_description_lenght) as tamanho_minimo,
    max(product_description_lenght) as tamanho_maximo
FROM tb_products
GROUP BY product_category_name;