-- 1
SELECT 都道府県名 FROM 都道府県
 WHERE 都道府県名 LIKE '%川';
-- 2
SELECT 都道府県名 FROM 都道府県
 WHERE 都道府県名 LIKE '%島%';
-- 3
SELECT 都道府県名 FROM 都道府県
 WHERE 都道府県名 LIKE '愛%';
-- 4
SELECT * FROM 都道府県
 WHERE 都道府県名 = 県庁所在地;
-- 5
SELECT * FROM 都道府県
 WHERE 都道府県名 <> 県庁所在地;