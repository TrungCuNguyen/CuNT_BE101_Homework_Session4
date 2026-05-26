CREATE SCHEMA products_2;

CREATE TABLE products_2.PRODUCTS
(
    id           SERIAL PRIMARY KEY,
    name         VARCHAR(50),
    category     VARCHAR(50),
    price        NUMERIC(20, 2),
    stock        INT,
    manufacturer VARCHAR(50)
);

INSERT INTO products_2.PRODUCTS (name, category, price, stock, manufacturer)
VALUES ('Laptop Dell XPS 13', 'Laptop', 25000000, 12, 'Dell'),
       ('Chuột Logitech M90', 'Phụ kiện', 150000, 50, 'Logitech'),
       ('Bàn phím cơ Razer', 'Phụ kiện', 2200000, 0, 'Razer'),
       ('Macbook Air M2', 'Laptop', 32000000, 7, 'Apple'),
       ('iPhone 14 Pro Max', 'Điện thoại', 35000000, 15, 'Apple'),
       ('Laptop Dell XPS 13', 'Laptop', 25000000, 12, 'Dell'),
       ('Tai nghe AirPods 3', 'Phụ kiện', 4500000, NULL, 'Apple');

INSERT INTO products_2.PRODUCTS(name, category, price, stock, manufacturer)
VALUES ('Chuột không dây Logitech M170', 'Phụ kiện', 300000, 20, 'Logitech');

UPDATE products_2.PRODUCTS
SET price = price * 1.1
WHERE manufacturer = 'Apple';

DELETE
FROM products_2.PRODUCTS
WHERE stock = 0;

SELECT id, name, category, price, stock, manufacturer
FROM products_2.PRODUCTS
WHERE price BETWEEN 1000000 AND 30000000;

SELECT id, name, category, price, stock, manufacturer
FROM products_2.PRODUCTS
WHERE stock IS NULL;

SELECT DISTINCT manufacturer
FROM products_2.PRODUCTS;

SELECT id, name, category, price, stock, manufacturer
FROM products_2.PRODUCTS
ORDER BY price DESC, name;

SELECT id, name, category, price, stock, manufacturer
FROM products_2.PRODUCTS
WHERE name ILIKE '%laptop%';

SELECT id, name, category, price, stock, manufacturer
FROM products_2.PRODUCTS
ORDER BY price DESC
LIMIT 2;











