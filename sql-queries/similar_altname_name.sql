-- select all ways with name and alt_name tag

create table names as (
select id, 
tags->'name' as name, 
tags->'alt_name' as alt_name,
linestring
from ways where tags?'alt_name');


-- detect ways that have similar name and alt_name

create table similar_altname_name as (
select * from names 
where alt_name like '%' || name || '%');

drop table names;