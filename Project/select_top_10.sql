USE `Project`;

# Просмотр топ-10 пользователей, выполнивших больше всего заказов

EXPLAIN SELECT login, COUNT(login) as task_count, SUM(sum) as salary
  FROM payments JOIN users on payments.seller_id = users.id
  GROUP BY login
  ORDER BY task_count DESC
  LIMIT 10;
