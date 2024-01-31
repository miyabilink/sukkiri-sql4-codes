CREATE TABLE 家計簿 (
  日付        DATE,
  費目ID      INTEGER,
  メモ        VARCHAR(100) DEFAULT '不明',
  入金額      INTEGER      DEFAULT 0,
  出金額      INTEGER      DEFAULT 0
)
