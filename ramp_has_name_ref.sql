create table ramp_has_name as (
select * 
from ways 
where tags->'highway'='motorway_link' 
and tags ?'name');

create table ramp_has_ref as (
select *
from ways 
where tags->'highway'='motorway_link' 
and tags ?'ref');