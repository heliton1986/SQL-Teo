.tables

SELECT * from tb_sellers limit 10;

--Quantos vendedores a olist tem em cada estado
SELECT
    seller_state,
    count(seller_id) as qt_vendedor
FROM tb_sellers
GROUP BY seller_state;


--Quantos vendedores a olist tem em cada estado
-- SP, RJ, PR 
SELECT
    seller_state,
    count(seller_id) as qt_vendedor
FROM tb_sellers
WHERE seller_state IN ('SP', 'RJ', 'PR')
GROUP BY seller_state;

--Quantos vendedores a olist tem em cada estado
--Qtd > 10
SELECT
    seller_state,
    count(seller_id) as qt_vendedor
FROM tb_sellers
GROUP BY seller_state
HAVING qt_vendedor > 10;

--Quantos vendedores a olist tem em cada estado
--Qtd > 10
SELECT
    seller_state,
    count(seller_id) as qt_vendedor
FROM tb_sellers
--filtro pré agregação
WHERE seller_state IN ('SP', 'RJ', 'PR')
-- agregação
GROUP BY seller_state
--filtro pós agregação
HAVING qt_vendedor > 10;