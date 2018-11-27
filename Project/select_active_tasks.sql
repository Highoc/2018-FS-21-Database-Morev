USE `Project`;

# Просмотр активных предлагаемых заданий пользователя

EXPLAIN SELECT * FROM tasks WHERE user_id=200 AND status_id = 2;
