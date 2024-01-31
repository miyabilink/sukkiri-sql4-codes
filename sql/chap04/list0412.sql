SELECT 費目 FROM 家計簿
EXCEPT
SELECT 費目 FROM 家計簿アーカイブ

--（OracleDB）
SELECT 費目 FROM 家計簿
MINUS
SELECT 費目 FROM 家計簿アーカイブ
