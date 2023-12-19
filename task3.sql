-- В рамках БД "песочница" напишите след/запросы:
-- Вывести данные о товарах (название, цена со скидкой в 0.5%)

SELECT
	ProductName,
	Price * .25 AS Price_down
FROM Products

-- Вывести самый дорогой товар в диапазоне до 100 EUR.

SELECT *
FROM Products
WHERE
	Price<100
ORDER BY Price DESC
LIMIT 1

-- Вывести два самых дешевых товара из категории 4.

SELECT *
FROM Products
WHERE CategoryID = 4
ORDER BY Price ASC
LIMIT 2

-- Вывести один товар, который находится на пятом месте среди самых дорогих.

SELECT *
FROM Products
ORDER BY Price DESC
LIMIT 1 OFFSET 4
