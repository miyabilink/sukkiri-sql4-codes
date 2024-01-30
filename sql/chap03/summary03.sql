-- 3月1日に払った食費の内容を知りたい
SELECT * FROM 家計簿
 WHERE 日付 = '2024-03-01' AND 費目 = '食費';

-- 支出に関係のない行を取り出したい
SELECT * FROM 家計簿
 WHERE 出金額 IS NULL;

-- メモに「購入」を含む支払いを調べたい
SELECT * FROM 家計簿
 WHERE メモ LIKE '%購入%' AND 出金額 > 0;

-- 住居費（家賃、電気代、水道代）の支払いを調べたい
SELECT * FROM 家計簿
 WHERE 費目 IN ('家賃','電気代','水道代');

-- 3月の行だけを取り出したい
SELECT * FROM 家計簿
 WHERE 日付 BETWEEN '2024-03-01' AND '2024-03-31';
