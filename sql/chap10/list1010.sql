CREATE TABLE 家計簿 (
  日付    DATE         NOT NULL,
  費目ID  INTEGER      REFERENCES 費目(ID),
  メモ    VARCHAR(100) DEFAULT '不明' NOT NULL,
  入金額  INTEGER      DEFAULT 0 CHECK(入金額 >= 0),
  出金額  INTEGER      DEFAULT 0 CHECK(出金額 >= 0)
)
