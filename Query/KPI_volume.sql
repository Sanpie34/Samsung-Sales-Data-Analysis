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

-- Basket Size (Average Units Sold per Sale) Analysis for Samsung Sales Data
SELECT is_5g, category, storage, product_name,
    SUM(units_sold) AS total_units_sold,
    COUNT(DISTINCT sale_id) AS total_sales,
    SUM(units_sold) / COUNT(DISTINCT sale_id) AS basket_size
FROM samsung_sales_data
WHERE (year <= 2023) AND (region = 'Asia') AND (storage IS NOT NULL)
GROUP BY is_5g, category, storage, product_name
ORDER BY basket_size DESC;

-- Units Sold by Customer Segment
SELECT customer_segment, SUM(units_sold) AS total_units_sold
FROM samsung_sales_data
WHERE (year = 2023) AND (region = 'Asia') AND (storage IS NOT NULL)
GROUP BY customer_segment
ORDER BY total_units_sold DESC;

-- Units Sold by Customer Age Group
SELECT customer_age_group, SUM(units_sold) AS total_units_sold
FROM samsung_sales_data
WHERE (year = 2023) AND (region = 'Asia') AND (storage IS NOT NULL)
GROUP BY customer_age_group
ORDER BY total_units_sold DESC;

-- Units Sold by Category
SELECT category, SUM(units_sold) AS total_units_sold
FROM samsung_sales_data
WHERE (year = 2023) AND (region = 'Asia') AND (storage IS NOT NULL)
GROUP BY category
ORDER BY total_units_sold DESC;

-- Units Sold by 5G Capability
SELECT is_5g, SUM(units_sold) AS total_units_sold
FROM samsung_sales_data
WHERE (year = 2023) AND (region = 'Asia') AND (storage IS NOT NULL)
GROUP BY is_5g
ORDER BY total_units_sold DESC;

-- Average Units Sold per Sale by Discount Percentage
SELECT category,
    AVG(units_sold) AS avg_units_sold_per_sale,
    discount_pct
FROM samsung_sales_data
WHERE (year = 2023) AND (region = 'Asia') AND (storage IS NOT NULL) AND (category ~ 'Galaxy (S|A|M|Z)')
GROUP BY category, discount_pct
ORDER BY category, avg_units_sold_per_sale DESC;

-- Top N Products by Units Sold
SELECT product_name, SUM(units_sold) AS total_units_sold,
    ROUND(PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY revenue_usd)) AS median_revenue_per_sale,
    RANK() OVER (ORDER BY SUM(units_sold) DESC) AS sales_rank
FROM samsung_sales_data
WHERE (year = 2023) AND (region = 'Asia') AND (storage IS NOT NULL)
GROUP BY product_name
ORDER BY sales_rank ASC;

