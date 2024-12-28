DROP DATABASE IF EXISTS products_db;
CREATE DATABASE products_db;

\c products_db;

-- Create Departments Table
CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

-- Insert Typical Grocery Store Departments
INSERT INTO departments (name) 
VALUES ('Dairy'),
       ('Bakery'),
       ('Produce'),
       ('Meat'),
       ('Seafood'),
       ('Frozen Foods'),
       ('Deli'),
       ('Beverages'),
       ('Snacks'),
       ('Pantry'),
       ('Household Supplies'),
       ('Health and Beauty'),
       ('Pharmacy'),
       ('Floral'),
       ('Baby Products'),
       ('Pet Supplies'),
       ('International Foods');

-- Create Products Table
CREATE TABLE products (   
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    quantity INTEGER NOT NULL DEFAULT 0,
    department_id INTEGER NOT NULL,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- Insert Sample Products
INSERT INTO products (name, price, quantity, department_id) 
VALUES ('Cheese', 2.50, 10, 1),       -- Dairy
       ('Bread', 1.50, 25, 2),        -- Bakery
       ('Milk', 2.00, 15, 1),         -- Dairy
       ('Eggs', 3.00, 30, 1),         -- Dairy
       ('Butter', 2.00, 20, 1),       -- Dairy
       ('Apples', 1.20, 50, 3),       -- Produce
       ('Chicken Breast', 5.00, 12, 4), -- Meat
       ('Salmon', 7.50, 8, 5),        -- Seafood
       ('Ice Cream', 4.00, 20, 6),    -- Frozen Foods
       ('Ham', 6.50, 10, 7),          -- Deli
       ('Coca-Cola', 1.75, 40, 8),    -- Beverages
       ('Chips', 2.25, 60, 9),        -- Snacks
       ('Rice', 1.80, 35, 10),        -- Pantry
       ('Toilet Paper', 3.50, 25, 11),-- Household Supplies
       ('Shampoo', 5.75, 15, 12),     -- Health and Beauty
       ('Aspirin', 4.20, 10, 13),     -- Pharmacy
       ('Roses', 10.00, 5, 14),       -- Floral
       ('Diapers', 15.00, 18, 15),    -- Baby Products
       ('Dog Food', 8.50, 20, 16),    -- Pet Supplies
       ('Soy Sauce', 3.00, 22, 17);   -- International Foods
       