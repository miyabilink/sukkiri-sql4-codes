-- 1
UPDATE 回答者
   SET 国名 = CASE SUBSTRING(TRIM(メールアドレス),
                            LENGTH(TRIM(メールアドレス))-1, 2)
             WHEN 'jp' THEN '日本'
             WHEN 'uk' THEN 'イギリス'
             WHEN 'cn' THEN '中国'
             WHEN 'fr' THEN 'フランス'
             WHEN 'vn' THEN 'ベトナム' END;
-- 2
SELECT TRIM(メールアドレス) AS メールアドレス,
       CASE WHEN 年齢 >= 20 AND 年齢 < 30 THEN '20代'
            WHEN 年齢 >= 30 AND 年齢 < 40 THEN '30代'
            WHEN 年齢 >= 40 AND 年齢 < 50 THEN '40代'
            WHEN 年齢 >= 50 AND 年齢 < 60 THEN '50代' END
       || '：' ||
       CASE 住居 WHEN 'D' THEN '戸建て'
                WHEN 'C' THEN '集合住宅' END AS 属性
  FROM 回答者;