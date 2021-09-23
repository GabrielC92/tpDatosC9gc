-- TP Mainpulación y consulta de datos

-- Micro desafío 1
insert into genres (name, ranking, active)
values ('Investigación', 13, 1);

update genres
set name = 'Investigación Científica'
where name = 'Investigación';

delete from genres
where name = 'Investigación Científica';

select * from movies;

select first_name,last_name,rating from actors;

-- select titulo from series;
select title from series;

-- Micro desafío 2
select first_name,last_name from actors
where rating > 7.5;

select title,rating,awards from movies
where rating > 7.5
and awards > 2;

select title,rating from movies
order by rating;

-- Micro desafío 3
select title from movies
limit 3;

select * from movies
order by rating desc
limit 5;

select * from movies
order by rating desc
limit 5
offset 5;

select * from actors
limit 10;

select * from actors
limit 10
offset 20;

-- Micro desafío 4
select title,rating from movies
where title like 'Harry Potter%';

select * from actors
where first_name like 'Sam%';

select title from movies
where year (release_date)
between 2004 and 2008;