-- List the names of all people who starred in Toy Story

SELECT name FROM people WHERE id IN
(SELECT person_id FROM stars WHERE movie_id =
(SELECT id FROM movies WHERE title = "Toy Story"));


/* Other solutions:

SELECT name FROM people 
JOIN stars ON people.id = stars.person_id 
JOIN movies ON stars.movie_id = movies.id 
WHERE title = "Toy Story";

*/