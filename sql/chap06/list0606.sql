SELECT '食費' AS 費目, SUM(出金額) AS 費目別の出金額の合計
  FROM 家計簿
 WHERE 費目 = '食費';   /* ⇒ 「食費」「380」 */

SELECT '給料' AS 費目, SUM(出金額) AS 費目別の出金額の合計
  FROM 家計簿
 WHERE 費目 = '給料';   /* ⇒ 「給料」「0」 */

SELECT '教養娯楽費' AS 費目, SUM(出金額) AS 費目別の出金額の合計
  FROM 家計簿
 WHERE 費目 = '教養娯楽費';   /* ⇒ 「教養娯楽費」「2800」 */
