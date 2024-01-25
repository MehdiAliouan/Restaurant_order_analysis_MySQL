---- Objective 3 : Analyze customer behavior ----
-- 1.Combine the menu_items and order_details tables into a single table
SELECT* 
FROM order_details
LEFT JOIN menu_items
ON menu_item_id = item_id;
-- 2.What were the least and most ordered items? What categories were they in ?
SELECT item_name, category, COUNT(order_details_id) num_purshase
FROM order_details
LEFT JOIN menu_items
ON menu_item_id = item_id
GROUP BY item_name, category
ORDER BY num_purshase DESC;
-- 3.What were the top 5 orders that spent the most money?
SELECT order_id, SUM(price) price
FROM order_details
LEFT JOIN menu_items
ON menu_item_id = item_id
GROUP BY order_id
ORDER BY price DESC
limit 5;
-- 4.View the details of the highest spend order. What insights can you gather from the results?
SELECT category, COUNT(item_id) AS num_items
FROM order_details
LEFT JOIN menu_items
ON menu_item_id = item_id
WHERE order_id = '440'
GROUP BY category;

-- 5.View the details of the top 5 highest spend orders. What insights can you gather from the results?
SELECT order_id, category, COUNT(item_id) AS num_items
FROM order_details
LEFT JOIN menu_items
ON menu_item_id = item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY order_id, category;
