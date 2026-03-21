CREATE TABLE samsung_sales_data (
    sale_id TEXT,
    sale_date DATE,
    year INT,
    quarter TEXT,
    month TEXT,
    country TEXT,
    region TEXT,
    city TEXT,
    product_name TEXT,
    category TEXT,
    storage TEXT,
    color TEXT,
    is_5g TEXT,
    unit_price_usd FLOAT,
    discount_pct INT,
    units_sold INT,
    discounted_price_usd FLOAT,
    revenue_usd FLOAT,
    currency TEXT,
    fx_rate_to_usd FLOAT,
    revenue_local_currency FLOAT,
    sales_channel TEXT,
    payment_method TEXT,
    customer_segment TEXT,
    customer_age_group TEXT,
    previous_device_os TEXT,
    customer_rating FLOAT,
    return_status TEXT

);

-- Load data into the table in PostgreSQL pgadmin4
\copy samsung_sales_data FROM 'C:/Users/asus/Downloads/Programming and Data Analyst/Samsung-Sales-Data-Analysis/Dataset/samsung_global_sales_dataset.csv' DELIMITER ',' CSV HEADER;
