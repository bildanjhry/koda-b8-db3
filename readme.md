# Join Table Movies

Proses dari Join (inner join) dari relasi antar table movies imdb.

### Task 1:
Join directors dan genres ke movies limit 50

Select table movies:
```sql
SELECT "movies"."name", "movies_genres"."genre", "directors"."first_name" FROM "movies"
```
Lakukan inner Join ke table movies_genres
```sql
JOIN "movies_genres" ON "movies_genres"."movie_id" = "movies"."id"
```
Lakukan inner Join kembali ke table movies_directors
```sql
JOIN "movies_directors" ON "movies_directors"."movie_id" = "movies"."id"
```
Terakhir inner Join ke directors dan memberikan limit 50
```sql
JOIN "directors" ON "directors"."id" = "movies_directors"."director_id" LIMIT 50;
```

### Task 2:
Join movies dan roles berdasarkan table actors.

Select table actors:
```sql
SELECT "actors"."first_name", "roles"."role", "movies"."name" FROM "actors"
```
lakukan inner Join dengan table roles:
```sql
JOIN "roles" ON "roles"."actor_id" = "actors"."id"
```

lakukan inner Join dengan table movies:
```sql
JOIN "movies" ON "movies"."id" = "roles"."movie_id";
```