-- 日付での並び替えや費目IDによる結合を行う家計簿テーブルの検索を高速に行いたい
CREATE INDEX 日付インデックス ON 家計簿(日付);
CREATE INDEX 費目IDインデックス ON 家計簿(費目ID);

-- 費目テーブルと結合済みの家計簿を、ビューを利用して手軽に使えるようにしたい
CREATE VIEW 費目名付き家計簿 AS
SELECT * FROM 家計簿
  JOIN 費目
    ON 家計簿.費目ID = 費目.ID;

-- 費目IDに連番を振るためのシーケンスを準備したい（PostgreSQLを想定）
CREATE SEQUENCE 費目シーケンス;

-- シーケンスを使って、費目テーブルに「接待交際費」を追加したい（PostgreSQLを想定）
INSERT INTO 費目 (ID, 名前)
     VALUES ( (SELECT NEXTVAL('費目シーケンス')),
              '接待交際費'
            );
