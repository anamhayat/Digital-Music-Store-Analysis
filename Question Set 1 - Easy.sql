--Q1: Who is the senior most employee based on job title? 

/*SELECT * FROM employee
ORDER BY levels desc
limit 1
*/
--E Q2: Which countries have the most Invoices? 

/*SELECT COUNT(*) AS c,billing_country FROM invoice
group by billing_country
ORDER BY c DESC
LIMIT 1
*/

--E  Q3: What are top 3 values of total invoice? 
/*SELECT total FROM invoice
order by total desc
limit 3
*/
--4.	Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money.
--Write a query that returns one city that has the highest sum of invoice totals.
--Return both the city name & sum of all invoice totals
/*SELECT SUM(total) as invoice_total, billing_city
FROM invoice
group by billing_city
ORDER BY invoice_total desc */

--Who is the best customer? The customer who has spent the most money will be declared the best customer. 
--Write a query that returns the person who has spent the most money

SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(invoice.total) as total
FROM customer
JOIN invoice ON customer.customer_id =invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total desc
LIMIT 1

