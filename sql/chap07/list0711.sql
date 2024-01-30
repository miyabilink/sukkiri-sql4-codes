SELECT SUM(SUB.出金額) AS 出金額合計
  FROM (SELECT 日付, 費目, 出金額
          FROM 家計簿
        UNION
        SELECT 日付, 費目, 出金額
          FROM 家計簿アーカイブ
         WHERE 日付 >= '2024-01-01'
           AND 日付 <= '2024-01-31') AS SUB
