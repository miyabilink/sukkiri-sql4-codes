/* 数千万行が該当するかもしれないSQL文 */
SELECT SUM(入金額) AS 入金額合計, SUM(出金額) AS 出金額合計
  FROM 口座入出金テーブル
 WHERE 日付 >= '2023-01-01' AND 日付 < '2024-01-01'
