CREATE DATABASE IF NOT EXISTS product_management_db;
USE product_management_db;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL,
    quantity INT NOT NULL
);

-- Thêm dữ liệu mẫu
INSERT INTO products (name, price, quantity) VALUES 
('Laptop Dell Inspiron', 15000000, 10),
('Chuột không dây Logitech', 350000, 50),
('Bàn phím cơ Gaming', 1200000, 25);