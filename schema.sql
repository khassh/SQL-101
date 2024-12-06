DROP DATABASE IF EXISTS products_db;
CREATE DATABASE products_db;

\c products_db;
CREATE TABLE products (   
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
  );
  INSERT INTO products (name, price) 
  VALUES ('Cheese', 2.50),
         ('Bread', 1.50),
         ('Milk', 2.00),
         ('Eggs', 3.00),
         ('Butter', 2.00);
