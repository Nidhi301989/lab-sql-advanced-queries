use sakila;
-- 1.List each pair of actors that have worked together.
SELECT DISTINCT fa1.ACTOR_ID AS ACTOR1, fa2.ACTOR_ID AS ACTOR2
FROM FILM_ACTOR fa1
JOIN FILM_ACTOR fa2 ON fa1.FILM_ID = fa2.FILM_ID
WHERE fa1.ACTOR_ID < fa2.ACTOR_ID;

select * from film_actor;

-- 2.For each film, list actor that has acted in more films.

SELECT
    actor.actor_id,
    actor.first_name,
    actor.last_name,
    COUNT(film_actor.film_id) AS film_count
FROM
    actor
JOIN
    film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY
    actor.actor_id
ORDER BY
    film_count DESC;
