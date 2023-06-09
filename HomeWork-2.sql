DROP DATABASE IF EXISTS homework_2;
CREATE DATABASE IF NOT EXISTS homework_2;
USE homework_2;

DROP TABLE IF EXISTS Sales;
CREATE TABLE IF NOT EXISTS Sales
(
id INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE NOT NULL,
count_product INT
);

INSERT INTO Sales (order_date, count_product)
VALUES 
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

SELECT * FROM Sales;

ALTER TABLE Sales
ADD COLUMN order_type INT;

SELECT
id,
-- order_type AS 'Тип заказа',
IF(count_product < 100, 'Маленький заказ',
	IF(count_product < 300,'Средний заказ','Большой заказ')) AS 'Тип заказа'
FROM Sales;    


DROP TABLE IF EXISTS Orders;
CREATE TABLE IF NOT EXISTS Orders
(
id INT PRIMARY KEY AUTO_INCREMENT,
employee_id VARCHAR(10) NOT NULL,
amount FLOAT NOT NULL,
order_status VARCHAR(20) NOT NULL
);

INSERT INTO Orders (employee_id, amount, order_status)
VALUES 
('e03', 15, 'OPEN'),
('e01', 25.5, 'OPEN'),
('e05', 100.7, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.5, 'CANCELLED');

SELECT * FROM Orders;

SELECT id, amount, order_status,
CASE 
	WHEN order_status = 'OPEN' THEN 'Order is in open state'
    WHEN order_status = 'CLOSED' THEN 'Order is closed'
    ELSE 'Order is cancelled'
    END AS full_order_status
FROM Orders;
