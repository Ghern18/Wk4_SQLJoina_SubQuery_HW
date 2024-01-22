--multi join

SELECT *
from actor
INNER JOIN film_actor
on actor.actor_id = film_actor.actor_id

SELECT *
from actor -- everything in the film actor table

SELECT *
from actor
INNER JOIN film_actor
on actor.actor_id = film_actor.actor_id

select * from film

select title, fa.film_id
from film_actor as fa --alias here for film_actor - fa
inner join film
on fa.film_id = film.film_id

SELECT *
from actor 

select first_name, last_name, title
from film_actor
INNER JOIN actor
on actor.actor_id = film_actor.actor_id --did not work unless we have info on title!
inner join film
on film_actor.film_id = film.film_id --including a multi join

select title, first_name, last_name
from film_actor
INNER JOIN actor
on actor.actor_id = film_actor.actor_id --did not work unless we have info on title!
inner join film
on film_actor.film_id = film.film_id 

select title, first_name, last_name
from film_actor
INNER JOIN actor
on actor.actor_id = film_actor.actor_id --did not work unless we have info on title!
inner join film
on film_actor.film_id = film.film_id 
where title like 'Wo%'
order by first_name

--sub queries
--This is one query here, we will run on another query every sql is a table.
-- 
--niche concept, some difficulty

select customer_id, sum(amount)
from payment
group by customer_id -- include aggregator
having sum(amount) < -15000
order by sum(amount)

--select first_name, last_name, email
--from customer
--where customer_id in (
--    group by customer_id                 ---------this produces an error
--    having sum(amount) < -15000
--    order by sum(amount)
--)


select first_name, last_name, email
from customer
where customer_id in (
    select customer_id
    from payment
    group by customer_id                
    having sum(amount) < -15000
    order by sum(amount)
)
--sub queries can occur in where, from, and select
            --select clause use not really thing...


--from clause

select first_name, last_name
from (
    select first_name, last_name, title
    from film_actor
    INNER JOIN actor
    on actor.actor_id = film_actor.actor_id --all this needs a reference
    inner join film
    on film_actor.film_id = film.film_id

) as multi_join --including a sub query
where title = 'Alone Trip'


-- select clause - don't really have use for when we will use this
select first_name, last_name, ( --only thing we can have when selected, pretty worhless
    select count(*)
    from rental
)
from customer


-- late rental charges, has alot of negative values. (Whole point of store procedure function, what you do commonly )
--


--HW - do the questions, not all of these are going to be, is an answer for number 4
-- there are answers for most of these, 7 and 3 do sub querry or try another way. , just the 8 questions. 
--Same format as monday. - Place in git hub, comment out questions, PLACE QUESRRY, THEN COMMENT OUT ANSWER 
--if you can't do sub querry, then do you!

--MAKE SURE TO PUT GITIGNORE IN VSCODE!!! - GITCODE INSIDE .VSCODE - IN .GITIGNORE TYPE IN .VSCODE


 

--12/14/2023  - ZACH



select* from payment
Create procedure pw136_late_brandt()



Language plpsql -- programming language postgresql
as $$

Create procedure pw136_lat_fee(LIMIT
    pay_id integer
    late_fee_ amount Numeric(5.2)
    where payment_id = pay_id;
    
    commit

)


call pw136_lat_fee
    from payment
    where payment_id=18499

    create or replace function pw136_lat_fee

    Language plpsql

    call
    $Mains
    Begin
    $Mains
        Insert Into acto(actor_id, first_name, last_name, last_update)
        Values (a_id, f_n, l_n, Now ():: Timestamp)


END
$Main;

Drop Frunction Pw136_add_
select * from payment

--syntax:

As $$
Begin
    --this is our code block
    update payment_i


    
    












