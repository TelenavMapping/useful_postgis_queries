-- create a table for each type of link

create table secondary_links as (select * from ways where tags->'highway'='secondary_link');
create table tertiary_links as (select * from ways where tags->'highway'='tertiary_link');
create table trunk_links as (select * from ways where tags->'highway'='trunk_link');
create table primary_links as (select * from ways where tags->'highway'='primary_link');

-- select links that intersect a highway of higher classification

create table miscategorized1 as (select distinct tertiary_links.* from tertiary_links, 
(select * from ways where tags->'highway'='secondary' 
 or tags->'highway'='primary'
 or tags->'highway'='trunk'
 or tags->'highway'='motorway') as higher 
where ST_intersects(tertiary_links.linestring, higher.linestring));

create table miscategorized2 as (select distinct secondary_links.* from secondary_links, 
(select * from ways where tags->'highway'='primary' 
 or tags->'highway'='trunk'
 or tags->'highway'='motorway') as higher 
where ST_intersects(secondary_links.linestring, higher.linestring));

create table miscategorized3 as (select distinct primary_links.* from primary_links, 
(select * from ways where 
 tags->'highway'='trunk'
 or tags->'highway'='motorway') as higher 
where ST_intersects(primary_links.linestring, higher.linestring));

create table miscategorized4 as (select distinct trunk_links.* from trunk_links, 
(select * from ways where 
tags->'highway'='motorway') as higher 
where ST_intersects(trunk_links.linestring, higher.linestring));

-- unify all previously created tables

create table miscategorized_links as (SELECT * FROM miscategorized1)
 UNION
 (SELECT * FROM miscategorized2)
 UNION
 (SELECT * FROM miscategorized3)
 UNION
 (SELECT * FROM miscategorized4)
 order by id;

-- drop intermediary tables

drop table miscategorized1;
drop table miscategorized2;
drop table miscategorized3;
drop table miscategorized4;
drop table secondary_links;
drop table tertiary_links;
drop table trunk_links;
drop table primary_links;