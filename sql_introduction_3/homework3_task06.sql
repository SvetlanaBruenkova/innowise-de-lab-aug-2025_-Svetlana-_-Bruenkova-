--Посчитайте общее количество заказов и среднюю сумму по каждому товару.
select item, count(*), avg(amount)
from orders
Group By item