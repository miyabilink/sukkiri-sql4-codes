-- 今月の収入と支出の合計額を知りたい
SELECT SUM(入金額), SUM(出金額) FROM 家計簿;

-- 今月の食費を支払った回数を知りたい
SELECT COUNT(費目) AS 食費を支払った回数 FROM 家計簿
 WHERE 費目 = '食費';

-- 先月までの水道光熱費で、最も高かった額と低かった額を知りたい
SELECT MAX(出金額) AS 最高額, MIN(出金額) AS 最低額
  FROM 家計簿アーカイブ WHERE 費目 = '水道光熱費';

-- 先月までの給料の平均額を知りたい
SELECT AVG(入金額) AS 平均額 FROM 家計簿アーカイブ
 WHERE 費目 = '給料';

-- 先月までの費目ごとの出費額を知りたい
SELECT 費目, SUM(出金額) AS 出金額
  FROM 家計簿アーカイブ
 GROUP BY 費目;

-- 今月の出費のうち、平均が5,000円以上の費目とその最大額を知りたい
SELECT 費目, MAX(出金額) AS 最大出金額 FROM 家計簿
 WHERE 出金額 > 0
 GROUP BY 費目
HAVING AVG(出金額) >= 5000;
