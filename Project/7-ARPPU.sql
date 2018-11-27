use Project;

WITH RECURSIVE cte AS
(
    SELECT MIN(CAST(dttm AS DATE)) AS dt FROM payments
        UNION ALL
	SELECT cte.dt + INTERVAL 1 DAY
		FROM cte
		WHERE cte.dt + INTERVAL 1 DAY <= (SELECT MAX(CAST(dttm AS DATE)) AS dt FROM payments)
),
pay_for_day AS
(
    SELECT CAST(dttm AS DATE) AS dt, SUM(sum) as pay_sum
		FROM payments
		GROUP BY dt
),
pu_for_day AS
(
	SELECT CAST(dttm AS DATE) AS dt, COUNT(DISTINCT buyer_id) as user_cnt
		FROM payments
		GROUP BY dt
)
SELECT cte.dt, 0.1 * COALESCE(pay.pay_sum, 0) / COALESCE(pu.user_cnt, 1) AS ARPPU
	FROM cte
	LEFT JOIN pay_for_day AS pay ON cte.dt = pay.dt
	LEFT JOIN pu_for_day AS pu ON cte.dt = pu.dt;
