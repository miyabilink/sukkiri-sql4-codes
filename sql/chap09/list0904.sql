BEGIN;
LOCK TABLE 家計簿 IN EXCLUSIVE MODE;
-- 集計処理1
SELECT ～ ;
-- 集計処理2
SELECT ～ ;
-- 集計処理3
SELECT ～ ;
COMMIT;