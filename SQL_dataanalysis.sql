USE restaurant_db;
---- Obective 1 : Explore the items table----

-- 1. View the menu_items table.
SELECT * 
FROM menu_items;
-- 2. Find the number of items on the menu. 
SELECT COUNT(*)
From menu_items;
-- 3.What are the least and most expensive items on the menu ? 
SELECT item_name,price
FROM menu_items
ORDER BY price DESC;
-- 4. How many Italian dishes are on the menu ?
SELECT COUNT(category)
FROM menu_items
WHERE category = 'Italian';
-- 5. What are the least and most expensive Italian dishes on the menu ?
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;
-- 6. How many dishes are in each category ?
SELECT category, COUNT(item_name) AS dishes
FROM menu_items
GROUP BY category;
-- 7. What is the average dish price within each category ?
SELECT category, AVG(price) AS average_price
FROM menu_items
GROUP BY category;

