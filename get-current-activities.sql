select datid, datname, pid, usename, wait_event_type, wait_event, state, query from pg_stat_activity
where usename not in ('azuresu', 'datadog', 'AADS_A_SAZ_AMBEV_DBA')
order by datname, usename
