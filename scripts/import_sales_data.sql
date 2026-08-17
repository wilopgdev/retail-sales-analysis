-- Script para importar dataset retail_sales.csv a la tabla sales
-- Aquí configurar la ruta del archivo CSV según tu entorno
-- No incluir credenciales reales de conexión

LOAD DATA LOCAL INFILE "ruta/del/archivo/retail_sales_dataset.csv"
INTO TABLE sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(TransactionID, CustomerID, ProductName, Category, Region, SaleDate, Quantity, UnitPrice, DiscountPct, SalesAmount, SalesChannel, CustomerSegment);