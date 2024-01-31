SELECT 費目, 出金額 FROM 家計簿
 WHERE 出金額 = (SELECT MAX(出金額) FROM 家計簿)
