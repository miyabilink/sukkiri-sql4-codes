BEGIN;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
UPDATE 受注統計 -- (1)
   SET 統計値 = (SELECT COUNT(*) FROM 受注)
 WHERE 項目名= '注文回数';
UPDATE 受注統計 -- (2)
   SET 統計値 = (SELECT AVG(注文数) FROM 受注)
 WHERE 項目名 = '平均受注数';
UPDATE 受注統計 -- (3)
   SET 統計値 = 20240413    -- 本日の日付を整数表記したもの
 WHERE 項目名= '統計実施日';
COMMIT;
