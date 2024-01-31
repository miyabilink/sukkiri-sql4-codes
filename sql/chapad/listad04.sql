/* (1)平均を求める */
SELECT AVG(起床時刻) FROM 睡眠記録;
/* (2)平均を使って分散を求める */
SELECT AVG(POWER(起床時刻 -【(1)の平均値】, 2)) FROM 睡眠記録;