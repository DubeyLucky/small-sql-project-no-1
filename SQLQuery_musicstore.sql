use music_database

--Who is the senior most employee based on job title?
--first method 


select levels from employee

select max(levels) from employee

select * from employee where levels = 7

--second method

select * from employee 
order by levels desc offset 0 rows
--Offset 0 rows or we can write here limit 1

--Which countries have the most invoices?


select * from invoice

select max(billing_country) as most_invoices from invoice

select * from invoice where billing_country = 'USA'

--2nd method
select count(*) as Maximum, billing_country from invoice
group by billing_country 
order by Maximum desc

--what are total values in top 3 invoices?
select total from invoice
order by total desc offset 0 rows
--offset 0 row or we can use limit 3

--which city has the best customers ?
--we would like to throw the event in the city we made the most money
--write to query that return one city that has highest sum of invoices totals.
--Return both the city name & sum of all invoice total
select * from invoice

select sum(total) as invoice_total, billing_city from invoice
group by billing_city
order by invoice_total desc


