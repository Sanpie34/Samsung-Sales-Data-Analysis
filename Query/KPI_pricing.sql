-- Revenue before and after discount
SELECT 
    is_5g, 
    discount_pct,
    ROUND(SUM(unit_price_usd * units_sold)) AS total_revenue_before_discount, 
    ROUND(SUM(revenue_usd)) AS total_revenue_after_discount
FROM samsung_sales_data
WHERE year = 2023
  AND region = 'Asia'
  AND storage IS NOT NULL
  AND category ~ 'Galaxy (S|A|M|Z)'
GROUP BY is_5g, discount_pct
ORDER BY is_5g, discount_pct DESC;


SELECT 
    category, 
    discount_pct,
    ROUND(SUM(unit_price_usd * units_sold)) AS total_revenue_before_discount, 
    ROUND(SUM(revenue_usd)) AS total_revenue_after_discount
FROM samsung_sales_data
WHERE year = 2023
  AND region = 'Asia'
  AND storage IS NOT NULL
  AND category ~ 'Galaxy (S|A|M|Z)'
GROUP BY category, discount_pct
ORDER BY category, discount_pct DESC;

-- Discount Contribution for Units Sold
SELECT 
    category,
    discount_pct,
    SUM(units_sold) AS total_units_sold,
    SUM(units_sold) * 1.0 
        / SUM(SUM(units_sold)) OVER (PARTITION BY discount_pct) 
        AS contribution_pct
FROM samsung_sales_data
WHERE year = 2023
  AND region = 'Asia'
  AND storage IS NOT NULL
  AND category ~ 'Galaxy (S|A|M|Z)'
GROUP BY category, discount_pct
ORDER BY category, discount_pct;
