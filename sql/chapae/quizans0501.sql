-- 1 (A)
UPDATE 試験結果
   SET 午後1 = (80*4) - (86+68+91)
 WHERE 受験者ID = 'SW1046';
-- 1 (B)
UPDATE 試験結果
   SET 論述 = (68*4) - (65+53+70)
 WHERE 受験者ID = 'SW1350';
-- 1 (C)
UPDATE 試験結果
   SET 午前 = (56*4) - (59+56+36)
 WHERE 受験者ID = 'SW1877';
-- 2
SELECT 受験者ID AS 合格者ID
  FROM 試験結果
 WHERE 午前 >= 60
   AND 午後1 + 午後2 >= 120
   AND 0.3 * (午前 + 午後1 + 午後2) <= 論述;