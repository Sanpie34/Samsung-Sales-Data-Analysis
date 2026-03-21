-- Column with NULL values: storage, previous_device_os, and customer_rating

-- KPI Volume Analysis for Samsung Sales Data
SELECT is_5g, category, storage, product_name,
    SUM(units_sold) AS total_units_sold,
    COUNT(DISTINCT sale_id) AS total_sales,
    SUM(units_sold) / COUNT(DISTINCT sale_id) AS average_units_per_sale,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY revenue_usd) AS median_revenue_per_sale

FROM samsung_sales_data
WHERE (year = 2023) AND (region = 'Asia') AND (storage IS NOT NULL)
GROUP BY is_5g, category, storage, product_name
ORDER BY is_5g, category, storage, product_name;

