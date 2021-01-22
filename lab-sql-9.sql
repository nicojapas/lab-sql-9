-- # Lab | SQL Queries 9

-- - Create a table `rentals_may` to store the data from rental table with information for the month of May.
use sakila;
create table rentals_may like rental;

-- - Insert values in the table `rentals_may` using the table rental, filtering values only for the month of May.
insert into rentals_may
select * from rental
where month(rental_date) = 5;
select * from rentals_may;

-- - Create a table `rentals_june` to store the data from rental table with information for the month of June.
create table rentals_june like rental;

-- - Insert values in the table `rentals_june` using the table rental, filtering values only for the month of June.
delete from rentals_june;
insert into rentals_june
select * from rental
where month(rental_date) = 6;
select * from rentals_june;

-- - Check the number of rentals for each customer for May.
select customer_id, count(*) as number_of_rentals 
from rentals_may
group by customer_id
order by number_of_rentals desc;

-- - Check the number of rentals for each customer for June.
select customer_id, count(*) as number_of_rentals 
from rentals_june
group by customer_id
order by number_of_rentals desc;