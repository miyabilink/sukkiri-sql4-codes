SELECT A.日付, A.メモ, A.関連日付, B.メモ
  FROM 家計簿 AS A
  LEFT JOIN 家計簿 AS B
         ON A.関連日付 = B.日付
