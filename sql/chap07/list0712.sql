INSERT INTO 家計簿集計(費目, 合計, 平均, 回数)
SELECT 費目, SUM(出金額), AVG(出金額), 0
  FROM 家計簿
 WHERE 出金額 > 0
 GROUP BY 費目