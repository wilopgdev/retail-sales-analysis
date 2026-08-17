-- Script para crear la base de datos retail_sales y la tabla sales
-- Se usa DECIMAL(10,2) para valores monetarios con precisión
-- Aquí configurar la conexión según tu entorno (no incluir credenciales reales)

CREATE DATABASE retail_sales;
USE retail_sales;
CREATE TABLE sales (
	SaleID INT AUTO_INCREMENT PRIMARY KEY,
    TransactionID VARCHAR(50),
    CustomerID VARCHAR(50),
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Region VARCHAR(50),
    SaleDate DATE,
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    DiscountPct DECIMAL(5,2),
    SalesAmount DECIMAL(10,2),
    SalesChannel VARCHAR(50),
    CustomerSegment VARCHAR(50)
);