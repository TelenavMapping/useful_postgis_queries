-- create table with links (ramps) that have name

create table ramp_has_name as (
select * 
from ways 
where tags->'highway' like '%_link' 
and tags ?'name');


- create tabke with links (ramps) that have ref

create table ramp_has_ref as (
select *
from ways 
where tags->'highway' like '%_link' 
and tags ?'ref');