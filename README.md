# 📊 Proyecto de Análisis de Datos de Ventas (retail-sales-analysis)

## 📝 Descripción del Proyecto
Este proyecto simula la necesidad de una empresa minorista que busca entender el comportamiento de sus ventas, identificar productos más rentables, clientes frecuentes y tendencias de compra. Se construirá una base de datos en MySQL con datos públicos confiables, se realizarán consultas SQL para obtener métricas clave, se exportarán resultados a Excel para análisis intermedio y se crearán dashboards interactivos en Power BI.

## 🛠️ Herramientas Utilizadas
* **Base de Datos:** MySQL / SQL Server
* **Lenguaje:** SQL (Consultas, Agregaciones, JOINs)
* **Visualización:** Power BI / Excel

## 📁 Estructura del Repositorio
* `data/`: Datasets utilizados en el análisis.
* `scripts/`: Consultas SQL para creación, limpieza y análisis de datos.
* `dashboards/`: Reportes e imágenes del panel interactivo.

## 🔍 Preguntas de Negocio a Responder
1. ¿Cuáles son los productos más vendidos y rentables?
2. ¿Qué clientes generan mayor volumen de compras?
3. ¿Cómo se comportan las ventas por región y por mes?
4. ¿Qué tendencias se pueden identificar para mejorar la estrategia comercial?

---
*Proyecto de portafolio creado por Wilington Patiño Gómez*

### Importación de datos

El script `import_sales_data.sql` muestra cómo cargar el dataset `retail_sales_dataset.csv` en la tabla `sales`.

⚠️ Nota importante:
- La ruta del archivo CSV en el comando `LOAD DATA LOCAL INFILE` debe ajustarse según el entorno local de cada usuario.
- En este repositorio se utiliza una ruta genérica como referencia, pero no corresponde a una ubicación fija en tu sistema.
- Antes de ejecutar el script, reemplaza `'ruta/del/archivo/retail_sales_dataset.csv'` por la ubicación real del archivo en tu equipo.
- No se incluyen credenciales ni configuraciones privadas de MySQL Workbench por motivos de confidencialidad.

### Columnas ignoradas en la importación

El dataset original (`retail_sales_dataset.csv`) contiene más columnas que las definidas en la tabla `sales`.  
En el script `import_sales_data.sql` se utilizan variables temporales (`@columna`) para capturar y descartar aquellas columnas que no son relevantes para el análisis principal.  

- Columnas ignoradas: `customer_gender`, `customer_age_group`, `product_id`, `brand`, `payment_method`.  
- Estas columnas no se almacenan en la tabla porque el objetivo del proyecto es analizar ventas, clientes y productos desde una perspectiva general.  
- En otros proyectos podrían ser útiles para análisis más detallados (ejemplo: segmentación por género o métodos de pago).  
- De esta forma, el script se mantiene limpio y enfocado en las métricas de negocio que se quieren mostrar en el proyecto.

### Diseño de la tabla `sales`

La tabla se creó siguiendo modelado de datos, priorizando un esquema simple y enfocado en el análisis de ventas.  
Se definieron nombres consistentes en `snake_case`, tipos de datos adecuados y una clave primaria autoincremental.

```sql
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

*Proyecto de portafolio creado por Wilington Patiño Gómez*
