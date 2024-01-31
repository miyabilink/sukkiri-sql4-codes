SELECT * FROM 家計簿アーカイブ
 WHERE 費目 IN (SELECT 費目 FROM 家計簿
                WHERE 費目 IS NOT NULL)