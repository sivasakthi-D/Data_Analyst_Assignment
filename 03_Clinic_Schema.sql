-- CLINIC SCHEMA SETUP

DROP TABLE IF EXISTS clinic_sales;
DROP TABLE IF EXISTS expenses;

CREATE TABLE clinic_sales (
    id INT PRIMARY KEY,
    date DATE,
    sales_channel VARCHAR(50),
    amount DECIMAL(10,2)
);

CREATE TABLE expenses (
    id INT PRIMARY KEY,
    date DATE,
    amount DECIMAL(10,2)
);

-- Insert data
INSERT INTO clinic_sales VALUES
(1, '2021-11-01', 'Online', 5000),
(2, '2021-11-02', 'Offline', 3000),
(3, '2021-12-01', 'Online', 7000);

INSERT INTO expenses VALUES
(1, '2021-11-01', 2000),
(2, '2021-11-02', 1500),
(3, '2021-12-01', 3000);
