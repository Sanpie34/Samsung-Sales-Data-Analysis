-- EDA already performed in Python (Google Colab) using pandas and matplotlib/seaborn for visualizations.


-- Table columns
-- 'sale_id', 'sale_date', 'year', 'quarter', 'month', 'country', 'region',
--       'city', 'product_name', 'category', 'storage', 'color', 'is_5g',
--      'unit_price_usd', 'discount_pct', 'units_sold', 'discounted_price_usd',
--       'revenue_usd', 'currency', 'fx_rate_to_usd', 'revenue_local_currency',
--       'sales_channel', 'payment_method', 'customer_segment',
--       'customer_age_group', 'previous_device_os', 'customer_rating',
--       'return_status'
--


-- Check the first 5 rows of the table
SELECT *
FROM samsung_sales_data
LIMIT 5;

-- Test Query
SELECT EXTRACT(MONTH from sale_date) AS month_number,
    SUM(revenue_usd) AS total_revenue,
    SUM(units_sold) AS total_units_sold,
    SUM(revenue_usd) / COUNT(units_sold) AS average_order_value
    
FROM samsung_sales_data
WHERE year = 2021
GROUP BY month_number
ORDER BY month_number;

SELECT DISTINCT region
FROM samsung_sales_data