-- 1. Consulta base
SELECT * 
FROM FactInternetSales;

-- 2. JOIN com dimensões
SELECT 
    c.EnglishCountryRegionName,
    SUM(s.SalesAmount) AS Receita
FROM FactInternetSales s
JOIN DimCustomer c ON s.CustomerKey = c.CustomerKey
GROUP BY c.EnglishCountryRegionName;

-- 3. Criação da VIEW
CREATE VIEW vw_analise_vendas AS
SELECT ...
