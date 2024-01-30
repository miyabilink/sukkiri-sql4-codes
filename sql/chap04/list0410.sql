-- LIMITの利用
--（MySQL、MariaDB、PostgreSQL、SQLite、H2 Database）
SELECT 費目, 出金額 FROM 家計簿
 ORDER BY 出金額 DESC LIMIT 3

-- ROW_NUMBER()の利用（SQLiteを除く）
SELECT K.費目, K.出金額
 FROM (
   SELECT *,
          ROW_NUMBER() OVER (ORDER BY 出金額 DESC) RN
     FROM 家計簿
 ) K
WHERE K.RN >= 1 AND K.RN <= 3

-- ROWNUMの利用（Oracle DB）
SELECT 費目, 出金額
  FROM (
    SELECT K.*, ROWNUM AS RN
      FROM (
        SELECT * FROM 家計簿
         ORDER BY 出金額 DESC
      ) K
  )
 WHERE RN >= 1 AND RN <= 3

 -- TOPの利用（SQL Server）
 SELECT TOP(3) 費目, 出金額
   FROM 家計簿 ORDER BY 出金額 DESC
