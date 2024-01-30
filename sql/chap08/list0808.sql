SELECT 日付, 費目.名前, 費目.経費区分ID
  FROM 家計簿
  JOIN ( SELECT * FROM 費目
          WHERE 経費区分ID = 1
       ) AS 費目
    ON 家計簿.費目ID = 費目.ID
