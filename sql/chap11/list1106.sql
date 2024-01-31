SELECT * FROM 家計簿
 WHERE 日付 >= '2024-04-01'
   AND 日付 <= '2024-04-30';
SELECT DISTINCT 費目ID FROM 家計簿
WHERE 日付 >= '2024-04-01'
  AND 日付 <= '2024-04-30';
