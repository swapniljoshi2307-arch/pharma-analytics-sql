CREATE DATABASE Pharma_Analytics;
USE Pharma_Analytics;

CREATE TABLE products (
product_id VARCHAR(10) PRIMARY KEY,
product_name VARCHAR(100),
brand VARCHAR (100),
therapy_area VARCHAR(100),
dosage_form VARCHAR(50),
launch_year INT,
price_per_unit DECIMAL(10,2)
);

INSERT INTO products
(product_id, product_name, brand, therapy_area, dosage_form, launch_year, price_per_unit)
VALUES
('P001', 'Cardiox', 'MedCore', 'Cardiology', 'Tablet', 2021, 45.00),
('P002', 'Glycora', 'PharmaLife', 'Diabetes', 'Tablet', 2020, 32.50),
('P003', 'Oncora', 'OncoMed', 'Oncology', 'Injection', 2022, 850.00),
('P004', 'Respira', 'MedCore', 'Respiratory', 'Inhaler', 2023, 275.00),
('P005', 'Neurovia', 'NeuroPharm', 'Neurology', 'Tablet', 2021, 120.00),
('P006', 'Arthrex', 'PharmaLife', 'Rheumatology', 'Tablet', 2019, 95.00),
('P007', 'Immunex', 'BioHealth', 'Immunology', 'Injection', 2022, 620.00),
('P008', 'Dermavax', 'DermaCare', 'Dermatology', 'Cream', 2020, 180.00),
('P009', 'Cardioval', 'MedCore', 'Cardiology', 'Capsule', 2024, 68.00),
('P010', 'Diabetra', 'PharmaLife', 'Diabetes', 'Injection', 2023, 410.00);

CREATE table territories (
territory_id VARCHAR(10) PRIMARY KEY,
territory_name VARCHAR(100),
region VARCHAR(50)
);

INSERT INTO territories 
(territory_id, territory_name, region)
VALUES
('T001', 'Ahmedabad', 'West'),
('T002', 'Mumbai', 'West'),
('T003', 'Pune', 'West'),
('T004', 'Delhi', 'North'),
('T005', 'Jaipur', 'North'),
('T006', 'Bengaluru', 'South'),
('T007', 'Hyderabad', 'South'),
('T008', 'Kolkata', 'East'),
('T009', 'Chennai', 'South'),
('T010', 'Lucknow', 'North');

CREATE TABLE hcp (
    hcp_id VARCHAR(10) PRIMARY KEY,
    hcp_name VARCHAR(100),
    specialty VARCHAR(100),
    city VARCHAR(100),
    territory_id VARCHAR(10)
);

INSERT INTO hcp
(hcp_id, hcp_name, specialty, city, territory_id)
VALUES
('H001', 'Dr. Mehta', 'Cardiology', 'Ahmedabad', 'T001'),
('H002', 'Dr. Shah', 'Oncology', 'Mumbai', 'T002'),
('H003', 'Dr. Rao', 'Endocrinology', 'Pune', 'T003'),
('H004', 'Dr. Verma', 'Neurology', 'Delhi', 'T004'),
('H005', 'Dr. Kapoor', 'Cardiology', 'Jaipur', 'T005'),
('H006', 'Dr. Iyer', 'Pulmonology', 'Bengaluru', 'T006'),
('H007', 'Dr. Reddy', 'Oncology', 'Hyderabad', 'T007'),
('H008', 'Dr. Sen', 'Dermatology', 'Kolkata', 'T008'),
('H009', 'Dr. Nair', 'Rheumatology', 'Chennai', 'T009'),
('H010', 'Dr. Joshi', 'Endocrinology', 'Lucknow', 'T010'),
('H011', 'Dr. Patel', 'Cardiology', 'Ahmedabad', 'T001'),
('H012', 'Dr. Malhotra', 'Oncology', 'Mumbai', 'T002'),
('H013', 'Dr. Kulkarni', 'Neurology', 'Pune', 'T003'),
('H014', 'Dr. Singh', 'Pulmonology', 'Delhi', 'T004'),
('H015', 'Dr. Desai', 'Dermatology', 'Ahmedabad', 'T001');

CREATE TABLE sales (
    sale_id VARCHAR(10) PRIMARY KEY,
    sale_date DATE,
    product_id VARCHAR(10),
    hcp_id VARCHAR(10),
    territory_id VARCHAR(10),
    units_sold INT,
    revenue DECIMAL(12,2)
);

INSERT INTO sales
(sale_id, sale_date, product_id, hcp_id, territory_id, units_sold, revenue)
VALUES
('S001', '2026-01-05', 'P001', 'H001', 'T001', 120, 5400.00),
('S002', '2026-01-08', 'P002', 'H003', 'T003', 180, 5850.00),
('S003', '2026-01-12', 'P003', 'H002', 'T002', 35, 29750.00),
('S004', '2026-01-15', 'P004', 'H006', 'T006', 75, 20625.00),
('S005', '2026-01-18', 'P005', 'H004', 'T004', 95, 11400.00),
('S006', '2026-01-22', 'P006', 'H009', 'T009', 140, 13300.00),
('S007', '2026-01-25', 'P007', 'H007', 'T007', 42, 26040.00),
('S008', '2026-01-28', 'P008', 'H008', 'T008', 65, 11700.00),
('S009', '2026-02-03', 'P009', 'H011', 'T001', 150, 10200.00),
('S010', '2026-02-06', 'P010', 'H010', 'T010', 55, 22550.00),

('S011', '2026-02-10', 'P001', 'H005', 'T005', 160, 7200.00),
('S012', '2026-02-14', 'P002', 'H010', 'T010', 210, 6825.00),
('S013', '2026-02-18', 'P003', 'H007', 'T007', 48, 40800.00),
('S014', '2026-02-21', 'P004', 'H014', 'T004', 90, 24750.00),
('S015', '2026-02-25', 'P005', 'H013', 'T003', 110, 13200.00),
('S016', '2026-03-02', 'P006', 'H009', 'T009', 175, 16625.00),
('S017', '2026-03-06', 'P007', 'H007', 'T007', 50, 31000.00),
('S018', '2026-03-10', 'P008', 'H015', 'T001', 80, 14400.00),
('S019', '2026-03-15', 'P009', 'H001', 'T001', 190, 12920.00),
('S020', '2026-03-20', 'P010', 'H003', 'T003', 70, 28700.00),

('S021', '2026-04-04', 'P001', 'H011', 'T001', 200, 9000.00),
('S022', '2026-04-08', 'P002', 'H003', 'T003', 240, 7800.00),
('S023', '2026-04-12', 'P003', 'H012', 'T002', 55, 46750.00),
('S024', '2026-04-17', 'P004', 'H006', 'T006', 110, 30250.00),
('S025', '2026-04-21', 'P005', 'H004', 'T004', 130, 15600.00),
('S026', '2026-05-03', 'P006', 'H009', 'T009', 195, 18525.00),
('S027', '2026-05-07', 'P007', 'H007', 'T007', 58, 35960.00),
('S028', '2026-05-11', 'P008', 'H008', 'T008', 95, 17100.00),
('S029', '2026-05-18', 'P009', 'H011', 'T001', 220, 14960.00),
('S030', '2026-05-22', 'P010', 'H010', 'T010', 85, 34850.00),

('S031', '2026-06-04', 'P001', 'H001', 'T001', 230, 10350.00),
('S032', '2026-06-08', 'P002', 'H003', 'T003', 270, 8775.00),
('S033', '2026-06-12', 'P003', 'H002', 'T002', 62, 52700.00),
('S034', '2026-06-16', 'P004', 'H014', 'T004', 125, 34375.00),
('S035', '2026-06-21', 'P005', 'H013', 'T003', 150, 18000.00),
('S036', '2026-07-05', 'P006', 'H009', 'T009', 220, 20900.00),
('S037', '2026-07-09', 'P007', 'H007', 'T007', 65, 40300.00),
('S038', '2026-07-13', 'P008', 'H015', 'T001', 110, 19800.00),
('S039', '2026-07-18', 'P009', 'H011', 'T001', 250, 17000.00),
('S040', '2026-07-22', 'P010', 'H010', 'T010', 100, 41000.00),

('S041', '2026-08-03', 'P001', 'H005', 'T005', 250, 11250.00),
('S042', '2026-08-07', 'P002', 'H010', 'T010', 300, 9750.00),
('S043', '2026-08-12', 'P003', 'H012', 'T002', 70, 59500.00),
('S044', '2026-08-17', 'P004', 'H006', 'T006', 140, 38500.00),
('S045', '2026-08-21', 'P005', 'H004', 'T004', 170, 20400.00),
('S046', '2026-08-26', 'P006', 'H009', 'T009', 245, 23275.00),
('S047', '2026-09-03', 'P007', 'H007', 'T007', 72, 44640.00),
('S048', '2026-09-07', 'P008', 'H008', 'T008', 125, 22500.00),
('S049', '2026-09-12', 'P009', 'H011', 'T001', 280, 19040.00),
('S050', '2026-09-16', 'P010', 'H003', 'T003', 120, 49200.00);

SELECT
    t.territory_name,
    COUNT(DISTINCT s.product_id) AS products_sold,
    SUM(s.units_sold) AS total_units_sold,
    ROUND(SUM(s.revenue), 2) AS total_revenue
FROM territories t
JOIN sales s
    ON t.territory_id = s.territory_id
GROUP BY
    t.territory_id,
    t.territory_name
ORDER BY total_revenue DESC;

SELECT
    p.product_name,
    p.brand,
    p.therapy_area,
    SUM(s.units_sold) AS total_units_sold,
    ROUND(SUM(s.revenue), 2) AS total_revenue,
    ROUND(
        SUM(s.revenue) * 100.0 /
        (SELECT SUM(revenue) FROM sales),
        2
    ) AS revenue_contribution_pct
FROM products p
JOIN sales s
    ON p.product_id = s.product_id
GROUP BY
    p.product_id,
    p.product_name,
    p.brand,
    p.therapy_area
ORDER BY total_revenue DESC
LIMIT 5;

SELECT
    h.hcp_id,
    h.hcp_name,
    h.specialty,
    h.city,
    COUNT(DISTINCT s.product_id) AS products_sold,
    SUM(s.units_sold) AS total_units_sold,
    ROUND(SUM(s.revenue), 2) AS total_revenue
FROM hcp h
JOIN sales s
    ON h.hcp_id = s.hcp_id
GROUP BY
    h.hcp_id,
    h.hcp_name,
    h.specialty,
    h.city
ORDER BY total_revenue DESC;

SELECT
    h.specialty,
    COUNT(DISTINCT h.hcp_id) AS total_hcps,
    SUM(s.units_sold) AS total_units_sold,
    ROUND(SUM(s.revenue), 2) AS total_revenue,
    ROUND(AVG(s.revenue), 2) AS avg_sales_record_revenue
FROM hcp h
JOIN sales s
    ON h.hcp_id = s.hcp_id
GROUP BY h.specialty
ORDER BY total_revenue DESC;


WITH product_performance AS (
    SELECT
        p.product_id,
        p.product_name,
        p.therapy_area,
        SUM(s.revenue) AS total_revenue
    FROM products p
    JOIN sales s
        ON p.product_id = s.product_id
    GROUP BY
        p.product_id,
        p.product_name,
        p.therapy_area
)
SELECT
    product_name,
    therapy_area,
    ROUND(total_revenue, 2) AS total_revenue,
    RANK() OVER (
        PARTITION BY therapy_area
        ORDER BY total_revenue DESC
    ) AS therapy_area_rank
FROM product_performance
ORDER BY therapy_area, therapy_area_rank;


WITH territory_performance AS (
    SELECT
        t.territory_id,
        t.territory_name,
        SUM(s.revenue) AS total_revenue
    FROM territories t
    JOIN sales s
        ON t.territory_id = s.territory_id
    GROUP BY
        t.territory_id,
        t.territory_name
)
SELECT
    territory_name,
    ROUND(total_revenue, 2) AS total_revenue,
    RANK() OVER (
        ORDER BY total_revenue DESC
    ) AS territory_rank,
    ROUND(
        100.0 * total_revenue /
        SUM(total_revenue) OVER (),
        2
    ) AS revenue_share_pct
FROM territory_performance
ORDER BY territory_rank;

SELECT
    COUNT(*) AS total_sales_records,
    COUNT(DISTINCT product_id) AS products_sold,
    COUNT(DISTINCT territory_id) AS territories_active,
    SUM(units_sold) AS total_units_sold,
    ROUND(SUM(revenue), 2) AS total_revenue,
    ROUND(AVG(revenue), 2) AS avg_revenue_per_record
FROM sales;


WITH product_revenue AS (
    SELECT
        p.product_id,
        p.product_name,
        SUM(s.revenue) AS total_revenue
    FROM products p
    JOIN sales s
        ON p.product_id = s.product_id
    GROUP BY
        p.product_id,
        p.product_name
)
SELECT
    product_name,
    ROUND(total_revenue, 2) AS total_revenue,
    ROUND(
        100.0 * total_revenue /
        SUM(total_revenue) OVER (),
        2
    ) AS revenue_share_pct,
    ROUND(
        SUM(total_revenue) OVER (
            ORDER BY total_revenue DESC
            ROWS BETWEEN UNBOUNDED PRECEDING
            AND CURRENT ROW
        ) * 100.0 /
        SUM(total_revenue) OVER (),
        2
    ) AS cumulative_revenue_pct
FROM product_revenue
ORDER BY total_revenue DESC;

SELECT
    DATE_FORMAT(sale_date, '%Y-%m') AS sales_month,
    COUNT(*) AS total_sales_records,
    SUM(units_sold) AS total_units_sold,
    ROUND(SUM(revenue), 2) AS monthly_revenue
FROM sales
GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
ORDER BY sales_month;


WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(sale_date, '%Y-%m') AS sales_month,
        SUM(revenue) AS monthly_revenue
    FROM sales
    GROUP BY DATE_FORMAT(sale_date, '%Y-%m')
),
monthly_comparison AS (
    SELECT
        sales_month,
        monthly_revenue,
        LAG(monthly_revenue) OVER (
            ORDER BY sales_month
        ) AS previous_month_revenue
    FROM monthly_sales
)
SELECT
    sales_month,
    ROUND(monthly_revenue, 2) AS monthly_revenue,
    ROUND(previous_month_revenue, 2)
        AS previous_month_revenue,
    ROUND(
        100.0 * (
            monthly_revenue - previous_month_revenue
        ) / NULLIF(previous_month_revenue, 0),
        2
    ) AS mom_growth_pct
FROM monthly_comparison
ORDER BY sales_month;

SELECT
    t.region,
    COUNT(DISTINCT t.territory_id) AS total_territories,
    SUM(s.units_sold) AS total_units_sold,
    ROUND(SUM(s.revenue), 2) AS total_revenue,
    ROUND(
        100.0 * SUM(s.revenue) /
        (SELECT SUM(revenue) FROM sales),
        2
    ) AS revenue_share_pct
FROM territories t
JOIN sales s
    ON t.territory_id = s.territory_id
GROUP BY t.region
ORDER BY total_revenue DESC;


SELECT
    s.sale_id,
    p.product_name,
    s.units_sold,
    p.price_per_unit,
    s.revenue AS recorded_revenue,
    ROUND(
        s.units_sold * p.price_per_unit, 2
    ) AS expected_revenue,
    ROUND(
        s.revenue -
        (s.units_sold * p.price_per_unit), 2
    ) AS revenue_difference
FROM sales s
JOIN products p
    ON s.product_id = p.product_id
WHERE ABS(
    s.revenue -
    (s.units_sold * p.price_per_unit)
) > 0.01
ORDER BY s.sale_id;

SELECT
    s.sale_id,
    s.product_id,
    s.hcp_id,
    s.territory_id
FROM sales s
LEFT JOIN products p
    ON s.product_id = p.product_id
LEFT JOIN hcp h
    ON s.hcp_id = h.hcp_id
LEFT JOIN territories t
    ON s.territory_id = t.territory_id
WHERE p.product_id IS NULL
   OR h.hcp_id IS NULL
   OR t.territory_id IS NULL;