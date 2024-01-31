-- これまでに使った費目一覧を、重複を除外して作りたい
SELECT DISTINCT 費目 FROM 家計簿;

-- 3月に使った金額を大きい順に取り出したい
SELECT * FROM 家計簿
 WHERE 日付 >= '2024-03-01'
   AND 日付 <= '2024-03-31'
 ORDER BY 出金額 DESC;

-- これまでの給料を大きい順に5件だけ取り出したい
SELECT * FROM 家計簿アーカイブ
 WHERE 費目 = '給料' ORDER BY 入金額 DESC
OFFSET 0 ROWS
 FETCH NEXT 5 ROWS ONLY;

-- 家計簿と、アーカイブにある2月のデータをまとめて日付順に取り出したい
SELECT * FROM 家計簿
UNION
SELECT * FROM 家計簿アーカイブ
 WHERE 日付 >= '2024-02-01'
   AND 日付 <= '2024-02-28'
 ORDER BY 1;

-- 今月初めて発生した費目を知りたい
SELECT 費目 FROM 家計簿
EXCEPT
SELECT 費目 FROM 家計簿アーカイブ;
