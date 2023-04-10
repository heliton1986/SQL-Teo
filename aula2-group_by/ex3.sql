/*
Ex3. Faça uma query que apresente o tamanho médio, 
máximo e mínimo do nome do objeto por categoria. 
Considere apenas os objetos que tenham a descrição maior que 100.
*/

SELECT * FROM tb_products limit 10;

SELECT 
    product_category_name,
    avg(product_name_lenght) as tamanho_medio_nome,
    min(product_name_lenght) as tamanho_minimo_nome,
    max(product_name_lenght) as tamanho_maximo_nome
FROM tb_products
WHERE product_description_lenght > 100
GROUP BY product_category_name
