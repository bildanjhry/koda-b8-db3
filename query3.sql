SELECT COUNT("genre") AS "total_genres", "directors"."first_name" AS "directors" 
FROM "directors_genres"
JOIN "directors" ON "directors"."id" = "directors_genres"."director_id" 
GROUP BY "directors", "genre";

SELECT COUNT("role") AS "role", "actors"."first_name" AS "actor" 
FROM "actors"
JOIN "roles" ON "roles"."actor_id" = "actors"."id" 
GROUP BY "actor_id", "id", "role" 
HAVING COUNT("role") > 5 LIMIT 500;

SELECT COUNT("movie_id") AS "total", "directors"."first_name" AS "directors" 
FROM "movies_directors"
JOIN "directors" ON "directors"."id" = "movies_directors"."director_id" 
GROUP BY "director_id", "id" 
ORDER BY "total" DESC LIMIT 1;

SELECT "year", COUNT("year") AS "total" 
FROM "movies" 
GROUP BY "year" ORDER BY "total" DESC LIMIT 1;

SELECT "name", STRING_AGG("movies_genres"."genre", ', ') AS "genre" 
FROM "movies_genres"
JOIN "movies" ON "movies_genres"."movie_id" = "movies"."id"
GROUP BY "movies"."name";