-- 1
SELECT COUNT(*) AS 社員数
  FROM 入退室管理
 WHERE 退室 IS NULL;
-- 2
SELECT 社員名, COUNT(*) AS 入室回数
  FROM 入退室管理
 GROUP BY 社員名
 ORDER BY 2 DESC;
-- 3
SELECT CASE 事由区分 WHEN '1' THEN 'メンテナンス'
                    WHEN '2' THEN 'リリース作業'
                    WHEN '3' THEN '障害対応'
                    WHEN '9' THEN 'その他'
       END AS 事由,
       COUNT(*) AS 入室回数
  FROM 入退室管理
 GROUP BY 事由区分;
-- 4
SELECT 社員名, COUNT(*) AS 入室回数
  FROM 入退室管理
 GROUP BY 社員名
HAVING COUNT(*) > 10;
-- 5
SELECT 日付, COUNT(社員名) AS 対応社員数
  FROM 入退室管理
 WHERE 事由区分 = '3'
 GROUP BY 日付;