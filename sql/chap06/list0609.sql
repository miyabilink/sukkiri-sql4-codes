SELECT 費目, SUM(出金額) AS 費目別の出金額の合計
  FROM 家計簿
 GROUP BY 費目
HAVING SUM(出金額) > 0
