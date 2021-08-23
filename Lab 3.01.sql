USE sakila;

-- Activity 1
-- 1.  Drop column picture from staff.
ALTER TABLE staff
DROP picture;

-- 2.  A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
SELECT * FROM staff;
INSERT INTO staff (first_name, last_name, address_id, store_id, username) values ('Tammy','Sanders','79','2', 'Tammy');

SELECT address_id FROM customer
WHERE first_name like 'Tammy%' and last_name like 'Sanders%';

SELECT store_id FROM staff
WHERE first_name like 'Jon%';

SELECT * FROM staff;

-- 3.  Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table.
SELECT * FROM rental;
INSERT INTO rental (rental_date, inventory_id, customer_id, staff_id) values (curdate(),1,130,1);

SELECT i.inventory_id, return_date 
FROM inventory i
JOIN film f
ON i.film_id = f.film_id
JOIN rental r
ON i.inventory_id = r.inventory_id
WHERE title like '%Academy Dinosaur%'
AND store_id = 1;

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select staff_id from staff
where first_name = 'Mike' and last_name = 'Hillyer';
