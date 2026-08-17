-- Script para crear la base de datos retail_sales y la tabla sales
-- Se usa DECIMAL(10,2) para valores monetarios con precisión
-- Aquí configurar la conexión según tu entorno (no incluir credenciales reales)

CREATE DATABASE retail_sales;
USE retail_sales;
CREATE TABLE sales (
	sale_id INT AUTO_INCREMENT PRIMARY KEY,
    transaction_id VARCHAR(50),
    sale_date DATE,
    customer_id VARCHAR(50),
    customer_segment VARCHAR(50),
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2),
    discount_pct DECIMAL(5,2),
    sales_amount DECIMAL(10,2),
    sales_channel VARCHAR(50),
    region VARCHAR(50)
);