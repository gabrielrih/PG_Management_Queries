SELECT relname AS table_name,
       reltuples::bigint AS estimated_rows
FROM pg_class
WHERE relname = 'table-name';
