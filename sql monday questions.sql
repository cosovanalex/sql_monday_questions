-- 1. How many actors are thewre with the last name 'Wahlberg'?
select last_name, count(last_name) from actor
where last_name like 'Wahlberg'
group by last_name 
order by last_name;

-- 2. How many payments were made between $3.99 and $5.99?
select count(amount) 
From payment
where amount >= 3.99 and amount <= 5.99;

-- 3. What film does the store have the most of?(search in inventory)
select film_id, count(film_id) from inventory where film_id > 1 group by film_id order by count desc;

-- 4. How many custoemrs have the last name 'William'?
select last_name, count(last_name)
from customer
where last_name like 'William'
group by last_name;

-- 5. What store employee (get the id) sold the most rentals?
select staff_id,count(staff_id) from rental
group by staff_id;

-- 6. How many different district names are there?
select district from address
where district like '_%'
group by district
order by district;

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
select film_id, count(actor_id) from film_actor
group by film_id
order by count(film_id) desc;

-- 8. From store_id 1, how many customers have the last name ending with 'es'? (use customer table)
select * from customer;

select store_id, last_name from customer where last_name like '_%es' and store_id = 1
group by store_id, last_name
order by store_id desc


-- 9. How many payment amounts (4.99, 5.99 etc.) had a number of rentals above 250 for customers with ids between 380 and 430?
--  (use group by and having > 250)
select * from payment;


SELECT COUNT(payment_id),payment.amount
FROM payment
WHERE amount != 0 and customer_id between 380 and 430
GROUP BY payment.amount
HAVING COUNT(rental_id) > 250
order by payment.amount asc;





-- 10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select * from film;

select rating, count(rating)
from film
group by rating;













