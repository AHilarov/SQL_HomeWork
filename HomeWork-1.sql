/*
Создайте таблицу с мобильными телефонами, используя графический интерфейс.
Заполните БД данными. Добавьте скриншот на платформу в качестве ответа на ДЗ
*/

DROP DATABASE IF EXISTS homework_1;
CREATE DATABASE IF NOT EXISTS HomeWork_1;
USE HomeWork_1;

DROP TABLE IF EXISTS `phones`;
CREATE TABLE phones
(
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
ProductName VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(30) NOT NULL,
ProductCount INT,
Price INT
);

INSERT phones(ProductName, Manufacturer, ProductCount, Price)
VALUES
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huwaei', 5, 36000);

SELECT * FROM phones;

# Выведите название, производителя и цену для товаров, количество которых превышает 2 (SQL - файл, скриншот, либо сам код)

SELECT Manufacturer, Price FROM phones
WHERE ProductCount>2;

-- Выведите весь ассортимент товаров марки “Samsung”
SELECT * FROM phones
WHERE Manufacturer = 'Samsung';

-- С помощью регулярных выражений найти: Товары, в которых есть упоминание "Iphone"
SELECT ProductName FROM phones
WHERE ProductName LIKE '%iphone%';

-- С помощью регулярных выражений найти: Товары, в которых есть упоминание "Samsung"
SELECT * FROM phones
WHERE ProductName OR Manufacturer LIKE '%Samsung%';

-- С помощью регулярных выражений найти: Товары, в которых есть ЦИФРА "8"
SELECT * FROM phones
WHERE ProductName REGEXP '8';
