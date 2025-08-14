-- Найдите клиентов, которые:
-- 1. Сделали хотя бы 2 заказа (любых),
-- 2. Имеют хотя бы одну доставку со статусом 'Delivered'.
-- Для каждого такого клиента выведите:
-- ● full_name (имя + фамилия),
-- ● общее количество заказов,
-- ● общую сумму заказов,
-- ● страну проживания.
SELECT
  first_name || ' ' || last_name AS full_name, country,
  (SELECT COUNT(*) FROM orders WHERE orders.customer_id = customers.customer_id) AS total_orders,
  (SELECT SUM(amount) FROM orders WHERE orders.customer_id = customers.customer_id) AS total_amount
FROM customers
WHERE customer_id IN (
  SELECT customer_id FROM orders GROUP BY customer_id HAVING COUNT(*) >= 2)
AND customer_id IN (
  SELECT customer FROM shippings WHERE status = 'Delivered');
