CREATE SCHEMA products_1;

CREATE TABLE products_1.PRODUCTS
(
    id       SERIAL PRIMARY KEY,
    name     VARCHAR(50),
    category VARCHAR(50),
    price    DECIMAL(10, 2),
    stock    INT
);

INSERT INTO products_1.PRODUCTS(name, category, price, stock)
VALUES ('Laptop Dell', 'Electronics', 1500.00, 5),
       ('Chuột Logitech', 'Electronics', 25.50, 50),
       ('Bàn phím Razer', 'Electronics', 120.00, 20),
       ('Tủ lạnh LG', 'Home Appliances', 800.00, 3),
       ('Máy giặt Samsung', 'Home Appliances', 600.00, 2);

INSERT INTO products_1.PRODUCTS(name, category, price, stock)
VALUES ('Điều hòa Panasonic', 'Home Appliances', 400.00, 10);

UPDATE products_1.PRODUCTS
SET stock = 7
WHERE name = 'Laptop Dell';

DELETE
FROM products_1.PRODUCTS
WHERE stock = 0;

SELECT id, name, category, price, stock
FROM products_1.PRODUCTS
ORDER BY price;

SELECT DISTINCT category
FROM products_1.PRODUCTS;

SELECT id, name, category, price, stock
FROM products_1.PRODUCTS
WHERE price BETWEEN 100 AND 1000;

SELECT id, name, category, price, stock
FROM products_1.PRODUCTS
WHERE name LIKE '%LG%'
   OR name LIKE '%Samsung%';

SELECT id, name, category, price, stock
FROM products_1.PRODUCTS
ORDER BY price DESC
LIMIT 2;

SELECT id, name, category, price, stock
FROM products_1.PRODUCTS
ORDER BY price DESC
LIMIT 2 OFFSET 1;
