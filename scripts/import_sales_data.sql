-- Script para importar dataset retail_sales.csv a la tabla sales
-- Aquí configurar la ruta del archivo CSV según tu entorno
-- No incluir credenciales reales de conexión

SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE 'ruta/del/archivo/retail_sales_dataset.csv'
INTO TABLE sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(transaction_id, sale_date, customer_id, customer_gender, customer_age_group, customer_segment, product_id, product_name, category, brand, quantity, unit_price, discount_pct, sales_amount, payment_method, sales_channel, region);

DESCRIBE sales;
SHOW COLUMNS FROM sales;