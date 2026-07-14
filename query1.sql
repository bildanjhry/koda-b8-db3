-- 1. search diatas tahun 2000
SELECT "id", "name", "year" FROM "movies" WHERE "year" >= 2000 ORDER BY "year" ASC;

-- 2. search movie diantara rating 5 >= 7 dan rilis 2004 >= 2006
SELECT "id", "name", "rankscore" FROM "movies" 
WHERE "rankscore" >= 5 AND "rankscore" <= 7 
AND "year" >= 2004 AND "year" <= 2006; 

-- 3. menghitung jumlah movie dengan rating 6
SELECT COUNT(*) AS "total", "rankscore" FROM "movies" WHERE "rankscore" = 6 GROUP BY "rankscore";

-- 4. search actor dengan akhiran nama 's'
SELECT "id", "first_name", "last_name", "gender" 
FROM "actors" WHERE "last_name" LIKE '%s';

