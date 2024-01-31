SELECT * FROM 家計簿アーカイブ
 WHERE 費目 IN (SELECT COALESCE(費目, '不明') FROM 家計簿)