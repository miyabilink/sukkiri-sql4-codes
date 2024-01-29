/* 費目の値に応じて変換する */
SELECT 費目, 出金額,
  CASE 費目 WHEN '居住費' THEN '固定費'
           WHEN '水道光熱費' THEN '固定費'
           ELSE '変動費'
   END AS 出費の分類
  FROM 家計簿 WHERE 出金額 > 0
