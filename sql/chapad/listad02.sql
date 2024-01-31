SELECT 起床時刻, COUNT(起床時刻) AS 頻度
  FROM 睡眠記録
 GROUP BY 起床時刻
 ORDER BY 頻度 DESC
 FETCH FIRST 1 ROW ONLY