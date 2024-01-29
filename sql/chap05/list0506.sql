/* 条件に応じた値に変換する */
SELECT 費目, 入金額,
  CASE WHEN 入金額 < 5000 THEN 'お小遣い'
       WHEN 入金額 < 100000 THEN '一時収入'
       WHEN 入金額 < 300000 THEN '給料出た！'
       ELSE '想定外の収入です！'
   END AS 収入の分類
  FROM 家計簿
 WHERE 入金額 > 0