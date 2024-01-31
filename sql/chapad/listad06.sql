UPDATE 睡眠記録
   SET 起床時刻 = (SELECT AVG(起床時刻) FROM 睡眠記録
                   WHERE 起床時刻 IS NOT NULL)
 WHERE 起床時刻 IS NULL