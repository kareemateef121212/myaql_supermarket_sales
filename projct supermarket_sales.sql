
select *
from dataa1. supermarket_salescsv;

create table dataa1. supermarket_salescsv1
like dataa1.supermarket_salescsv ;

insert dataa1. supermarket_salescsv1
select *
from dataa1.supermarket_salescsv;


select *
from dataa1. supermarket_salescsv1;

select *,
case
when Rating <=5 then  'bad'
when Rating <6 then  'good'
when Rating >=6  then'very good'
end as new_rating
from dataa1. supermarket_salescsv;


SELECT  City,Rating, 'bad' as new_rating
FROM dataa1. supermarket_salescsv
WHERE rating <= 5 
UNION
SELECT City,Rating, 'good'
FROM dataa1. supermarket_salescsv
WHERE rating >5 and Rating < 7
UNION
SELECT city, Rating, 'very good'
FROM dataa1. supermarket_salescsv
WHERE rating >=7;

select city,branch,rating,
row_number()over(partition by City order by NEW_RATING) EVALUATION_NUMBER,
case
when Rating <=5 then  'bad'
when Rating <6 then  'good'
when Rating >=6  then'very good'
end as new_rating
from dataa1. supermarket_salescsv;



select  sum(cogs), max(cogs) ,avg(cogs), min(cogs) 
from dataa1. supermarket_salescsv;










