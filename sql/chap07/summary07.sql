-- 食費の合計額を集計して集計テーブルを更新したい
UPDATE 家計簿集計
   SET 合計 = (SELECT SUM(出金額)
                 FROM 家計簿アーカイブ
                WHERE 出金額 > 0
                  AND 費目 = '食費')
 WHERE 費目 = '食費';

-- 1月と12月の出金額の合計をそれぞれ知りたい
SELECT SUMLIST.タイトル, SUMLIST.出金額計
  FROM (SELECT '合計01月' AS タイトル, SUM(出金額) AS 出金額計
          FROM 家計簿アーカイブ
         WHERE 日付 >= '2024-01-01'
           AND 日付 <= '2024-01-31'
         UNION
        SELECT '合計12月' AS タイトル, SUM(出金額) AS 出金額計
          FROM 家計簿アーカイブ
         WHERE 日付 >= '2023-12-01'
           AND 日付 <= '2023-12-31') AS SUMLIST;

-- 今月初めて発生した費目を知りたい
SELECT DISTINCT 費目 FROM 家計簿
 WHERE 費目 NOT IN (SELECT 費目 FROM 家計簿アーカイブ);

-- 今月の給料が先月までよりも高い額かを知りたい
SELECT * FROM 家計簿
 WHERE 費目 = '給料'
   AND 入金額 > ALL (SELECT 入金額 FROM 家計簿アーカイブ
                     WHERE 費目 = '給料');

-- 今月の家計簿データをアーカイブしたい
INSERT INTO 家計簿アーカイブ
SELECT * FROM 家計簿;
