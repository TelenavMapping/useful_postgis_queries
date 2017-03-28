-- select all motorway junctions that don't have a ref tag

create table no_ref_junction as (
select * from nodes 
where tags->'highway'='motorway_junction' 
and tags ?'ref'=false 
and tags ?'noref'=false);