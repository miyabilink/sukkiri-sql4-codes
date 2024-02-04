CREATE TABLE 学生 (
  学籍番号  CHAR(8)      PRIMARY KEY,
  名前     VARCHAR(30)  NOT NULL,
  生年月日  DATE         NOT NULL,
  血液型    CHAR(2)      CHECK (
    血液型 IN ('A', 'B', 'O', 'AB') OR
    血液型 IS NULL
  ),
  学部ID   CHAR(1)       REFERENCES 学部(ID)
)