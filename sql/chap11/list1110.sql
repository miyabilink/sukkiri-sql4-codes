-- シーケンスを作成
CREATE SEQUENCE 費目シーケンス;
-- 次の値に進み、その値を取得
SELECT 費目シーケンス.NEXTVAL FROM DUAL;
-- 現在の値を取得
SELECT 費目シーケンス.CURRVAL FROM DUAL;
