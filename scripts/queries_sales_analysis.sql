-- Consulta de productos mas vendidos
SELECT product_name, SUM(quantity) AS total_vendido
FROM sales
GROUP BY product_name
ORDER BY total_vendido DESC
LIMIT 10;

-- Consulta de clientes mas frecuentes con productos comprados
SELECT customer_id, product_name,  COUNT(transaction_id) AS compras_realizadas
FROM sales
GROUP BY customer_id, product_name
ORDER BY compras_realizadas DESC
LIMIT 10;

-- Consulta de ventas por región
SELECT region, SUM(sales_amount) AS total_ventas
FROM sales
GROUP BY region
ORDER BY total_ventas DESC;

-- Consulta de ventas mensuales
SELECT DATE_FORMAT(sale_date, '%Y-%m') AS mes, SUM(sales_amount) AS total_ventas
FROM sales
GROUP BY mes
ORDER BY MES;