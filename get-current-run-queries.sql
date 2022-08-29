/** Get queries that are current running */
SELECT
	S.pid,
	AGE(clock_timestamp(), query_start),
	usename,
	application_name,
	client_addr,
	query
FROM pg_stat_activity S
ORDER BY usename desc