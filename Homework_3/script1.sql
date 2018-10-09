USE `FS21-DB`;

SELECT users.login
FROM users JOIN payments ON payments.user_id = users.user_id
GROUP BY users.login
ORDER BY SUM(payments.payment_sum) DESC
LIMIT 3;  
