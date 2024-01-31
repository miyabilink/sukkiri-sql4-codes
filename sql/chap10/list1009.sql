-- ①家計簿テーブルで利用中の費目について、費目テーブルから削除
DELETE FROM 費目 WHERE ID = 2;
-- ②家計簿テーブルで利用中の費目について、費目テーブルのIDを変更
UPDATE 費目 SET ID = 5 WHERE ID = 1;
-- ③家計簿テーブルに存在しない費目を指定して、家計簿テーブルに行を追加
INSERT INTO 家計簿 (日付, 費目ID, 入金額, 出金額)
     VALUES ('2024-04-06', 99, 0, 800);
-- ④費目テーブルに存在しない費目を指定して、家計簿テーブルの行を更新
UPDATE 家計簿 SET 費目ID = 99
 WHERE 日付= '2024-04-10';
