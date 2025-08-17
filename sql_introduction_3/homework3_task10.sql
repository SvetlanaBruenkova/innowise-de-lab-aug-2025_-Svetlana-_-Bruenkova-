-- Найдите клиентов, которые:
-- 1. Сделали хотя бы 2 заказа (любых),
-- 2. Имеют хотя бы одну доставку со статусом 'Delivered'.
-- Для каждого такого клиента выведите:
-- ● full_name (имя + фамилия),
-- ● общее количество заказов,
-- ● общую сумму заказов,
-- ● страну проживания.
select first_name || ' ' || last_name AS full_name, country,
  COUNT(order_id) AS total_orders,
  SUM(amount) AS total_amount
FROM customers 
JOIN orders ON orders.customer_id = customers.customer_id
JOIN shippings ON shippings.customer = customers.customer_id AND shippings.status = 'Delivered'
GROUP BY customers.customer_id, first_name, last_name, country
HAVING COUNT(order_id) >= 2;


