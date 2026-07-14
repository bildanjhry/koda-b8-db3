SELECT * FROM "directors" ORDER BY "first_name" ASC LIMIT 30;

SELECT COUNT("genre") AS "total_genres", "directors"."first_name" AS "directors" FROM "directors_genres"
JOIN "directors" ON "directors"."id" = "directors_genres"."director_id" 
GROUP BY "directors", "genre";

SELECT "role" FROM "roles" WHERE role = (SELECT COUNT("role") FROM "roles");

SELECT COUNT("role") AS "role", "actors"."first_name" AS "actor" FROM "actors"
JOIN "roles" ON "roles"."actor_id" = "actors"."id" GROUP BY "actor_id", "id" WHERE "role" > 5;

SELECT COUNT("movie_id") AS "total", "directors"."first_name" AS "directors" FROM "movies_directors"
JOIN "directors" ON "directors"."id" = "movies_directors"."director_id" GROUP BY "director_id", "id" ORDER BY "total" DESC LIMIT 1;

SELECT "year", COUNT("year") AS "total" FROM "movies" GROUP BY "year" ORDER BY "total" DESC LIMIT 1;

-- SELECT MAX( SELECT COUNT("genre") FROM "directors_genres" GROUP BY "director_id") FROM "directors_genres" GROUP BY "director_id";