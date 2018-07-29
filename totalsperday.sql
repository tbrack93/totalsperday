SELECT t.login::date AS day, d.name AS department_name,
SUM(date_part('hour', (t.logout - t.login))) AS total_hours
FROM timesheet t
JOIN department d ON t.department_id = d.id
GROUP BY day, department_name
ORDER BY day, department_name
;
