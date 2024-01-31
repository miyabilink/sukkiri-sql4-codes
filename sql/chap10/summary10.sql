-- 「ID」列を主キーとする費目テーブルを作りたい
CREATE TABLE 費目 (
  ID   INTEGER     PRIMARY KEY,
  名前  VARCHAR(40) UNIQUE
);

-- 適切な制約を設定した家計簿テーブルを作りたい
CREATE TABLE 家計簿 (
  日付    DATE         NOT NULL,
  費目ID  INTEGER      REFERENCES 費目(ID),
  メモ    VARCHAR(100) DEFAULT '不明' NOT NULL,
  入金額  INTEGER      DEFAULT 0 CHECK(入金額 >= 0),
  出金額  INTEGER      DEFAULT 0 CHECK(出金額 >= 0)
);

-- 費目テーブルに「備考」列を追加したい
ALTER TABLE 費目 ADD 備考 VARCHAR(50);

-- 家計簿テーブルを削除したい
DROP TABLE 家計簿;
