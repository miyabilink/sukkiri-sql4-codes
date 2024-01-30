SELECT 日付, 費目.名前, 経費区分.名称
  FROM 家計簿
  JOIN 費目
    ON 家計簿.費目ID = 費目.ID
  JOIN 経費区分
    ON 費目.経費区分ID = 経費区分.ID
