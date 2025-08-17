--Посчитайте общее количество заказов и среднюю сумму по каждому товару.
select item, count(*), round(avg(amount),2)
from orders
Group By item