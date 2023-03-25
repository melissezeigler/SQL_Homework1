--Week 5 - Monday Questions
--1. How many actors are there with the last name ‘Wahlberg’?
--
--Input: 
select first_name,last_name
from actor 
where last_name = 'Wahlberg';
--OUTPUT: There are 2 Wahlberg named Nick and Daryl. 

--2. How many payments were made between $3.99 and $5.99?
--Input: 
select customer_id, amount
from payment
where amount between 3.99 and 5.99
order by amount desc;
--OUTPUT: none
--
--3. What film does the store have the most of? (search in inventory)
--Input: 
select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc;
--OUTPUT: There are 72 unique films with 8 copies available

--4. How many customers have the last name ‘William’?
--Input: 
select customer_id, last_name  
from customer 
where last_name = 'William';
--OUTPUT: There are 0 last name William but there are 3 Williams
--
--5. What store employee (get the id) sold the most rentals?
--Input:
select staff_id, count(rental_id) 
from rental
group by staff_id;
--OUTPUT: Mike Hillyer (staff ID: 1) sold 8040 rentals

--6. How many different district names are there?
--Input:
select count(district)
from address
--OUTPUT: 603

--7. What film has the most actors in it? (use film_actor table and get film_id)
--INPUT:
select film_id, count(actor_id)
from film_actor
group by film_id
order by count(actor_id) desc;
--OUTPUT: The film number 508 “Lambs Cincinatti” had the most actors (15)
--
--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
--INPUT:
select last_name
from customers;
where last_name like '%es';
--OUTPUT: There are 13 customers with a last name ending in “es”
--
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)
--INPUT:
select amount, count(amount)
from payment
where customer_id between 380 and 430
group by amount
having count(amount) > 250;
--OUTPUT: There are 3 payment amounts satisfying the query, the dubious values of $-425.01, $-427.01 and $-429.01

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?
--INPUT:
select rating, count(rating)
from film
group by rating;
--OUTPUT: There are five ratings categories, PG-13 has the most (223) films

