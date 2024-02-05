CREATE TABLE 学部 ( ID CHAR(1) PRIMARY KEY, 名前 VARCHAR(20)  UNIQUE NOT NULL, 備考 VARCHAR(100) DEFAULT '特になし' NOT NULL  ); CREATE TABLE 学生 (  学籍番号 CHAR(8)   NOT NULL  PRIMARY KEY, 名前 VARCHAR(30) NOT NULL, 生年月日 DATE NOT NULL, 血液型 CHAR(2) CHECK (血液型 IN ('A', 'B', 'O', 'AB') OR 血液型 IS NULL), 学部ID CHAR(1) REFERENCES 学部(ID) ); INSERT INTO 学部 ( ID,名前,備考 ) VALUES ( 'R','理学部','りがく' );INSERT INTO 学部 ( ID,名前,備考 ) VALUES ( 'K','工学部','こうがく' );INSERT INTO 学生 ( 学籍番号,名前,生年月日,血液型,学部ID ) VALUES ( '20241234','会田　愛','2005-07-01','A','R' );INSERT INTO 学生 ( 学籍番号,名前,生年月日,血液型,学部ID ) VALUES ( '20245678','正田　翔太','2006-09-30','O','K' );