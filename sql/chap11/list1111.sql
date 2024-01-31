-- シーケンスを作成
CREATE SEQUENCE 費目シーケンス;
-- 次の値に進み、その値を取得
SELECT NEXTVAL FOR 費目シーケンス FROM SYSIBM.SYSDUMMY1;
-- 現在の値を取得
SELECT PREVVAL FOR 費目シーケンス FROM SYSIBM.SYSDUMMY1;
