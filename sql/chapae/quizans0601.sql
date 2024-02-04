-- 1
SELECT SUM(降水量), AVG(最高気温), AVG(最低気温)
  FROM 都市別気象観測;
-- 2
SELECT SUM(降水量), AVG(最高気温), AVG(最低気温)
  FROM 都市別気象観測
 WHERE 都市名 = '東京';
-- 3
SELECT 都市名, AVG(降水量), MIN(最高気温), MAX(最低気温)
  FROM 都市別気象観測
 GROUP BY 都市名;
-- 4
SELECT 月, AVG(降水量), AVG(最高気温), AVG(最低気温)
  FROM 都市別気象観測
 GROUP BY 月;
-- 5
SELECT 都市名, MAX(最高気温)
  FROM 都市別気象観測
 GROUP BY 都市名
HAVING MAX(最高気温) >= 38;
-- 6
SELECT 都市名, MIN(最低気温)
  FROM 都市別気象観測
 GROUP BY 都市名
HAVING MIN(最低気温) <= -10;