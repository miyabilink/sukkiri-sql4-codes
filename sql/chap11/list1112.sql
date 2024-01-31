-- シーケンスを作成
CREATE SEQUENCE 費目シーケンス;
-- 次の値に進み、その値を取得
SELECT NEXTVAL('費目シーケンス');
-- 現在の値を取得
SELECT CURRVAL('費目シーケンス');
