-- ATSISKAITYMAS

-- Pateikite klientų vardus ir pavardes, gyvenančius M raide prasidedančiuose miestuose. Naudokite
-- lenteles “customer”, “address”, “city”. (33 eilutės).

-- SELECT customer.first_name, customer.last_name, city.city
-- FROM customer
-- INNER JOIN address
-- ON customer.address_id=address.address_id
-- INNER JOIN city
-- ON city.city_id=address.city_id
-- GROUP BY city.city
-- HAVING city.city LIKE "M%";

-- Kada paskutinį kartą ir kiek sumokėjo klientė BETTY WHITE?

-- SELECT customer.first_name, customer.last_name, MAX(payment.payment_date), payment.amount
-- FROM payment
-- INNER JOIN customer
-- ON payment.customer_id=customer.customer_id
-- GROUP BY payment.payment_date
-- HAVING customer.first_name ="BETTY" AND customer.last_name ="WHITE"
-- ORDER BY MAX(payment.payment_date) DESC
-- LIMIT 1;

-- Suraskite filmų nuomos laikotarpius: paėmimo ir grąžinimo datas kliento, 
-- kurio pavardė yra LEE.(rental ir customer lentelės).Užklausa (25 eilutės).

-- SELECT customer.last_name, rental.rental_date, rental.last_update
-- FROM customer
-- INNER JOIN rental
-- ON customer.customer_id=rental.customer_id
-- WHERE customer.last_name=UPPER("LEE");
 

-- Kiek mažiausiai ir kiek daugiausiai už filmo nuomą yra sumokėjusi klientė Sarah Lewis? Naudokite lenteles “payment”, “customer”. Užklausa (1 eilutė).

-- SELECT CONCAT(customer.first_name," ",customer.last_name), MIN(payment.amount), MAX(payment.amount) 
-- FROM customer
-- INNER JOIN payment
-- ON customer.customer_id=payment.payment_id
-- WHERE customer.first_name=UPPER("SARAH") AND customer.last_name=UPPER("LEWIS");

-- Kiek nuomos užsakymų įvykdė darbuotojas Mike Hillyer per 2005 metų liepos mėnesį? Užklausa (1 eilutė).

-- SELECT staff.first_name, staff.last_name, MONTH(rental.rental_date), COUNT(*) AS rental_date 
-- FROM staff
-- INNER JOIN rental
-- ON staff.staff_id=rental.staff_id
-- WHERE staff.first_name=UPPER("MIKE") AND staff.last_name=UPPER("Hillyer") AND MONTH(rental.rental_date)=7;