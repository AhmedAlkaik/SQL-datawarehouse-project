# 🥇 Gold Layer: Data Dictionary

Welcome to the data dictionary for the Gold Layer of my Data Warehouse project! 

The Gold Layer represents the final, business-level presentation of the data. Everything here is fully structured, cleansed, and modeled specifically to support BI reporting, analytics, and business use cases. It consists of **Dimension (Dim) tables** for descriptive attributes and **Fact tables** for measurable business metrics.

Below is the documentation for the final models created in this project.

---

## 1. Customers Dimension (`gold.dim_customers`)
**Purpose:** Stores all customer details, fully enriched with demographic and geographic data to help analyze purchasing behaviors across different customer segments.

| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `customer_key` | INT | Surrogate key to uniquely identify each customer record in this dimension table. |
| `customer_id` | INT | The original, unique numerical identifier for the customer from the source system. |
| `customer_number` | NVARCHAR(50) | Alphanumeric identifier used for tracking and referencing the customer. |
| `first_name` | NVARCHAR(50) | The customer's first name. |
| `last_name` | NVARCHAR(50) | The customer's last name or family name. |
| `country` | NVARCHAR(50) | The customer's country of residence (e.g., 'Australia'). |
| `marital_status` | NVARCHAR(50) | The marital status of the customer (e.g., 'Married', 'Single'). |
| `gender` | NVARCHAR(50) | The gender of the customer (e.g., 'Male', 'Female', 'n/a'). |
| `birthdate` | DATE | The customer's date of birth, formatted as YYYY-MM-DD. |
| `create_date` | DATE | The date and time when this customer record was originally created. |

---

## 2. Products Dimension (`gold.dim_products`)
**Purpose:** Provides a comprehensive view of all products and their specific attributes, allowing us to filter and group sales by categories, subcategories, and product lines.

| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `product_key` | INT | Surrogate key to uniquely identify each product record in this dimension table. |
| `product_id` | INT | The original internal identifier assigned to the product. |
| `product_number` | NVARCHAR(50) | A structured alphanumeric code for the product, used for inventory/categorization. |
| `product_name` | NVARCHAR(50) | Descriptive name of the product (includes key details like type, color, size). |
| `category_id` | NVARCHAR(50) | Unique identifier linking the product to its high-level category. |
| `category` | NVARCHAR(50) | The broader classification of the product (e.g., 'Bikes', 'Components'). |
| `subcategory` | NVARCHAR(50) | A more granular, detailed classification within the main category. |
| `maintenance_required`| NVARCHAR(50) | Flag indicating if the product needs maintenance (e.g., 'Yes', 'No'). |
| `cost` | INT | The base cost/price of the product in monetary units. |
| `product_line` | NVARCHAR(50) | The specific series or product line it belongs to (e.g., 'Road', 'Mountain'). |
| `start_date` | DATE | The date when the product officially became available for sale. |

---

## 3. Sales Fact (`gold.fact_sales`)
**Purpose:** The core transactional table. It stores all the sales data and relies on surrogate keys to connect with the dimension tables for in-depth analytical slicing and dicing.

| Column Name | Data Type | Description |
| :--- | :--- | :--- |
| `order_number` | NVARCHAR(50) | Unique alphanumeric identifier for each specific sales order (e.g., 'SO54496'). |
| `product_key` | INT | Foreign key linking this sale to the `dim_products` table. |
| `customer_key` | INT | Foreign key linking this sale to the `dim_customers` table. |
| `order_date` | DATE | The exact date the order was placed by the customer. |
| `shipping_date` | DATE | The date the order was actually shipped. |
| `due_date` | DATE | The date the payment for the order was due. |
| `sales_amount` | INT | Total monetary value of the sale for this specific line item. |
| `quantity` | INT | The number of units ordered for this line item. |
| `price` | INT | The price per single unit of the product. |
