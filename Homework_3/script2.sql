USE `FS21-DB`;

SELECT AVG(session_count) AS 'average number of sessions'
FROM (
	SELECT SUM(session_flag) AS session_count 
    FROM (
		SELECT users.user_id, 1 AS session_flag 
        FROM sessions JOIN users ON sessions.user_id = users.user_id
        UNION ALL
        SELECT users.user_id, 0 AS session_flag
		FROM sessions RIGHT JOIN users ON sessions.user_id = users.user_id
		WHERE sessions.user_id IS NULL
    ) AS s_table GROUP BY s_table.user_id 
) AS result_table