.tables

SELECT * FROM tb_products LIMIT 10;

-- min, max, avg
SELECT
    max(product_weight_g) as maior_peso,
    min(product_weight_g) as menor_peso,
    avg(product_weight_g) as media_peso
FROM tb_products;

-- categoria artes
SELECT 
    product_category_name,
    max(product_weight_g) as maior_peso,
    min(product_weight_g) as menor_peso,
    round(avg(product_weight_g),2) as peso_medio
FROM tb_products
WHERE product_category_name = 'artes'

-- categoria beleza_saude
SELECT 
    product_category_name,
    max(product_weight_g) as maior_peso,
    min(product_weight_g) as menor_peso,
    round(avg(product_weight_g),2) as peso_medio
FROM tb_products
WHERE product_category_name = 'beleza_saude'

-- categoria perfumaria
SELECT 
    product_category_name,
    max(product_weight_g) as maior_peso,
    min(product_weight_g) as menor_peso,
    round(avg(product_weight_g),2) as peso_medio
FROM tb_products
WHERE product_category_name = 'perfumaria'

-- Agrupar max, min e avg pela coluna categoria
SELECT 
    product_category_name,
    max(product_weight_g) as maior_peso,
    min(product_weight_g) as menor_peso,
    round(avg(product_weight_g),2) as peso_medio
FROM tb_products
GROUP BY product_category_name;

-- Agrupar max, min e avg pela coluna categoria 
-- e qtd_produto por categoria
SELECT 
    product_category_name,
    count(product_category_name) as qtd_produto,
    max(product_weight_g) as maior_peso,
    min(product_weight_g) as menor_peso,
    round(avg(product_weight_g),2) as peso_medio
FROM tb_products
GROUP BY product_category_name;

-- coluna categoria nãp pode ser NULL
SELECT 
    product_category_name,
    count(product_category_name) as qtd_produto,
    max(product_weight_g) as maior_peso,
    min(product_weight_g) as menor_peso,
    round(avg(product_weight_g),2) as peso_medio
FROM tb_products
WHERE product_category_name IS NOT NULL
GROUP BY product_category_name;

-- sempre processa o where, depois o group by
SELECT 
    product_category_name,
    count(product_category_name) as qtd_produto,
    max(product_weight_g) as maior_peso,
    min(product_weight_g) as menor_peso,
    round(avg(product_weight_g),2) as peso_medio
FROM tb_products
WHERE product_category_name IS NOT NULL
    AND product_category_name != 'alimentos'
    AND product_category_name != 'agro_industria_e_comercio'
GROUP BY product_category_name;