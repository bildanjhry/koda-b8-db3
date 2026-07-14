-- Join directors dan genres ke movies limit 50
SELECT "movies"."name", "movies_genres"."genre", "directors"."first_name" FROM "movies"
JOIN "movies_genres" ON "movies_genres"."movie_id" = "movies"."id"
JOIN "movies_directors" ON "movies_directors"."movie_id" = "movies"."id"
JOIN "directors" ON "directors"."id" = "movies_directors"."director_id" LIMIT 50;

-- Join movies dan roles berdasarkan table actors.
SELECT "actors"."first_name", "roles"."role", "movies"."name" FROM "actors"
JOIN "roles" ON "roles"."actor_id" = "actors"."id"
JOIN "movies" ON "movies"."id" = "roles"."movie_id";
