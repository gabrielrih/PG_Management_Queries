-- DBS
-- Check the DB owner
SELECT d.datname as "Name", pg_catalog.pg_get_userbyid(d.datdba) as "Owner"
FROM pg_catalog.pg_database d
WHERE d.datname = 'database-name'
ORDER BY 1;

-- TABLES
-- Check the table owner
SELECT schemaname, tablename, tableowner
FROM pg_tables
WHERE   schemaname NOT IN ('information_schema', 'pg_catalog', 'cron','pg_toast')