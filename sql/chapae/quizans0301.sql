-- 1
SELECT * FROM 気象観測 WHERE 月 = 6;
-- 2
SELECT * FROM 気象観測 WHERE 月 <> 6;
-- 3
SELECT * FROM 気象観測 WHERE 降水量 < 100;
-- 4
SELECT * FROM 気象観測 WHERE 降水量 > 200;
-- 5
SELECT * FROM 気象観測 WHERE 最高気温 >= 30;
-- 6
SELECT * FROM 気象観測 WHERE 最低気温 <= 0;
-- 7 INを使う場合
SELECT * FROM 気象観測 WHERE 月 IN (3, 5, 7);
-- 7 ORを使う場合
SELECT * FROM 気象観測
 WHERE 月 = 3 OR 月 = 5 OR 月 = 7;
-- 8 NOT INを使う場合
SELECT * FROM 気象観測 WHERE 月 NOT IN (3, 5, 7);
-- 8 ANDを使う場合
SELECT * FROM 気象観測
 WHERE 月 <> 3 AND 月 <> 5 AND 月 <> 7;
-- 9
SELECT * FROM 気象観測
 WHERE 降水量 <= 100 AND 湿度 < 50;
-- 10
SELECT * FROM 気象観測
 WHERE 最低気温 < 5 OR 最高気温 > 35;
-- 11 BETWEENを使う場合
SELECT * FROM 気象観測
 WHERE 湿度 BETWEEN 60 AND 79;
-- 11 ANDを使う場合
SELECT * FROM 気象観測
 WHERE 湿度 >= 60 AND 湿度 <= 79;
-- 12
SELECT * FROM 気象観測
 WHERE 降水量 IS NULL OR 最高気温 IS NULL
    OR 最低気温 IS NULL OR 湿度 IS NULL;