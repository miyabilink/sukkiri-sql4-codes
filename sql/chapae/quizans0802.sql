-- 1
SELECT 社員番号, S.名前 AS 名前, B.名前 AS 部署名
  FROM 社員 AS S
  JOIN 部署 AS B
    ON S.部署ID = B.部署ID;
-- 2
SELECT S1.社員番号, S1.名前 AS 名前, S2.名前 AS 上司名
  FROM 社員 AS S1
  LEFT JOIN 社員 AS S2   -- 上司がいない場合もあるため外部結合
    ON S1.上司ID = S2.社員番号;
-- 3
SELECT 社員番号, S.名前 AS 名前,
       B.名前 AS 部署名, K.名前 AS 勤務地
  FROM 社員 AS S
  JOIN 部署 AS B
    ON S.部署ID = B.部署ID
  JOIN 支店 AS K
    ON S.勤務地ID = K.支店ID;
-- 4
SELECT 支店ID AS 支店コード, K.名前 AS 支店名,
       S.名前 AS 支店長名, T. 社員数
  FROM 支店 AS K
  JOIN 社員 AS S
    ON K.支店長ID = S.社員番号
  JOIN (SELECT COUNT(*) AS 社員数, 勤務地ID
          FROM 社員 GROUP BY 勤務地ID) AS T
    ON K.支店ID = T.勤務地ID;
-- 5
SELECT S1.社員番号 AS 社員番号, S1.名前 AS 名前,
       K1.名前 AS 本人勤務地, K2.名前 AS 上司勤務地
  FROM 社員 AS S1
  JOIN 社員 AS S2
    ON S1.上司ID = S2.社員番号
   AND S1.勤務地ID <> S2.勤務地ID
  JOIN 支店 AS K1
    ON S1.勤務地ID = K1.支店ID
  JOIN 支店 AS K2
    ON S2.勤務地ID = K2.支店ID;