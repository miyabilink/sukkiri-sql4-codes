-- 家賃60,000円の振込と同時に、手数料420円の支払いを記録したい
BEGIN;
INSERT INTO 家計簿
VALUES('2024-03-20', '住居費', '4月の家賃', 0, 60000);
INSERT INTO 家計簿
VALUES('2024-03-20', '手数料', '4月の家賃の振込', 0, 420);
COMMIT;

-- 3月20日のデータを削除したけれど、やっぱりなかったことにしたい
BEGIN;
DELETE FROM 家計簿 WHERE 日付 = '2024-03-20';
ROLLBACK;

-- 処理中にほかの人の操作で家計簿テーブルの内容が変化しないようにしながら、各種統計を記録したい
BEGIN;
LOCK TABLE 家計簿 IN EXCLUSIVE MODE;
INSERT INTO 統計結果
SELECT 'データ件数', COUNT(*) FROM 家計簿;
INSERT INTO 統計結果
SELECT '出金額平均', AVG(出金額) FROM 家計簿;
COMMIT;