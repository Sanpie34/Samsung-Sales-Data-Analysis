-- KPI Revenue in 2021
SELECT
    total_revenue AS total_revenue,
    COUNT(DISTINCT sale_id) AS total_sales,
    total_revenue / COUNT(DISTINCT sale_id) AS average_order_value, -- AOV (Average Order Value)
    SUM(units_sold) AS total_units_sold,
    total_revenue / SUM(units_sold) AS average_revenue_per_unit -- ASP (Average Selling Price)
FROM samsung_sales_data
WHERE year = 2021;

-- KPI Revenue Trend by Region in 2021 
SELECT is_5g, category, EXTRACT(MONTH from sale_date) AS month_number,
    total_revenue AS total_revenue,
    COUNT(DISTINCT sale_id) AS total_sales,
    total_revenue / COUNT(DISTINCT sale_id) AS average_order_value,
    SUM(units_sold) AS total_units_sold,
    total_revenue / SUM(units_sold) AS average_revenue_per_unit,
    PERCENTILE_CONT(0.5) WITHIN GROUP (ORDER BY revenue_usd) AS median_revenue
FROM samsung_sales_data
WHERE (year = 2021) AND (region = 'Asia')
GROUP BY is_5g, category, month_number
ORDER BY is_5g, category, month_number;

-- Revenue Growth
-- MoM (Month-over-Month) and YoY (Year-over-Year) Growth
-- With subqueries and window functions
SELECT year, month_number, sales_channel,
    total_revenue,
    LAG(total_revenue) OVER (PARTITION BY sales_channel ORDER BY year, month_number) AS previous_month_revenue,
    LAG(total_revenue, 12) OVER (PARTITION BY sales_channel ORDER BY year, month_number) AS previous_year_revenue,
    100 * (total_revenue - LAG(total_revenue) OVER (PARTITION BY sales_channel ORDER BY year, month_number)) / LAG(total_revenue) OVER (PARTITION BY sales_channel ORDER BY year, month_number) AS month_over_month_growth_pct,
    100 * (total_revenue - LAG(total_revenue, 12) OVER (PARTITION BY sales_channel ORDER BY year, month_number)) / LAG(total_revenue, 12) OVER (PARTITION BY sales_channel ORDER BY year, month_number) AS year_over_year_growth_pct

FROM (
    SELECT year, EXTRACT(MONTH from sale_date) AS month_number, 
    sales_channel,
    SUM(revenue_usd) AS total_revenue
    FROM samsung_sales_data
    GROUP BY year, month_number, sales_channel
) AS monthly_revenue
ORDER BY year, month_number, sales_channel;

-- Alternative approach using Common Table Expressions (CTEs)
WITH base AS (
    SELECT 
        year, 
        EXTRACT(MONTH FROM sale_date) AS month_number,
        sales_channel,
        SUM(revenue_usd) AS total_revenue
    FROM samsung_sales_data
    GROUP BY year, month_number, sales_channel
),
lagged AS (
    SELECT *,
        LAG(total_revenue) OVER (
            PARTITION BY sales_channel 
            ORDER BY year, month_number
        ) AS prev_month,
        LAG(total_revenue, 12) OVER (
            PARTITION BY sales_channel 
            ORDER BY year, month_number
        ) AS prev_year
    FROM base
)

SELECT *,
    100 * (total_revenue - prev_month) / NULLIF(prev_month, 0) AS mom_growth_pct,
    100 * (total_revenue - prev_year) / NULLIF(prev_year, 0) AS yoy_growth_pct
FROM lagged
ORDER BY year, month_number, sales_channel;

