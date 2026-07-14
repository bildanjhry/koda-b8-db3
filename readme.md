# Join Table Movies

Proses dari Join (inner join) dari relasi antar table movies imdb.

### Task 1:
Join directors dan genres ke movies limit 50

Select table movies:
```sql
SELECT "movies"."name", "movies_genres"."genre", "directors"."first_name" FROM "movies"
```