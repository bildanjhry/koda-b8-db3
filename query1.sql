--SELECT * FROM "movies";

-- 1. search diatas tahun 2000
SELECT * FROM "movies" WHERE "year" >= 2000 ORDER BY "year" ASC;

-- 2. search movie diantara rating 5 >= 7 dan rilis 2004 >= 2006

-- 3. menghitung jumlah movie dengan rating 6

-- 4. search actor dengan akhiran nama 's'
SELECT * FROM "actors"; WHERE last_name LIKE '%s';

