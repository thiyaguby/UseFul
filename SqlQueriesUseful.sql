--1. find-out-storage-space-used-by-a-table

select 
 owner,
table_name
    ,num_rows
    ,blocks*8/1024/1024   AS size_gb
from    all_tables 
where   owner           = 'INT_GOLD' 
ORDER BY size_gb desc
