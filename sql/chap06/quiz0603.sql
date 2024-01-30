-- 1
SELECT COUNT(*) FROM 販売履歴;
-- 2
SELECT 商品名, COUNT(*) FROM 販売履歴;
-- 3
SELECT COUNT(*) FROM 販売履歴 GROUP BY 商品名;
-- 4
SELECT 商品名, COUNT(*) FROM 販売履歴 GROUP BY 商品名;
-- 5
SELECT 商品区分, 商品名, COUNT(*) FROM 販売履歴
 GROUP BY 商品名;
-- 6
SELECT 商品区分, 商品名, COUNT(*) FROM 販売履歴
 GROUP BY 商品区分, 商品名
HAVING AVG(価格) >= 10000;
