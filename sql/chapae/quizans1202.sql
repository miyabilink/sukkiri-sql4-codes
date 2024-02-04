-- 設問1、2ともに、解答例を以下に示します。

-- 部署テーブルの作成
CREATE TABLE dept (
  deptno   CHAR(2)     PRIMARY KEY,
  deptname VARCHAR(40) UNIQUE NOT NULL
);
-- 役職テーブルの作成
CREATE TABLE pos (
  poscode  CHAR(1)     PRIMARY KEY,
  posname  VARCHAR(20) UNIQUE NOT NULL
);
-- 社員テーブルの作成
CREATE TABLE emp (
  empno    CHAR(5)     PRIMARY KEY,
  empname  VARCHAR(40) NOT NULL,
  poscode  CHAR(1)     NOT NULL REFERENCES pos(poscode),
  age      INTEGER     CHECK(age >= 0)
);
-- 部員テーブルの作成
CREATE TABLE member (
  deptno   CHAR(2)     NOT NULL REFERENCES dept(deptno),
  empno    CHAR(5)     NOT NULL REFERENCES emp(empno),
  PRIMARY KEY(deptno, empno)
);