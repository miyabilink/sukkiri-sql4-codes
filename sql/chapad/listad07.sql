SELECT 記録日, 就寝時刻,
       COALESCE(就寝時刻,
                (AVG(就寝時刻) OVER (
                   ORDER BY 記録日
                   ROWS BETWEEN 3 PRECEDING AND 1 PRECEDING))
               ) AS 補正就寝時刻
  FROM 睡眠記録