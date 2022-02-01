#Select all the actors with the first name ‘Scarlett’.
select * from actor where first_name = "Scarlett";

#Select all the actors with the last name ‘Johansson’.
select * from actor where last_name = "Johansson";

#How many films (movies) are available for rent?
select count(film_id) from film;

#How many films have been rented?
select count(inventory_id) from rental;

#What is the shortest and longest rental period?
select max(datediff( return_date, rental_date)) as total_days_rented from rental;
select min(datediff( return_date, rental_date)) as total_days_rented from rental;

#What are the shortest and longest movie duration? Name the values max_duration and min_duration.
select max(length) from film;
select min(length) from film;

#What's the average movie duration?
select avg(length) from film;

#What's the average movie duration expressed in format (hours, minutes)?
select avg(length) / 60 as avg_in_hours from film;

#How many movies longer than 3 hours?
select title from film where (length / 60) > 3;

#Get the name and email formatted. Example: Mary SMITH - mary.smith@sakilacustomer.org.

#What's the length of the longest film title?
select max(length), title as longest_movie from film

