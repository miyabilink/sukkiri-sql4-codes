SELECT 日付, 家計簿.メモ, 費目.メモ
  FROM 家計簿
  JOIN 費目
    ON 家計簿.費目ID = 費目.ID