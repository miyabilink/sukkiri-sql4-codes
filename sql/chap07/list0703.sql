UPDATE 家計簿集計
   SET 平均 = (SELECT AVG(出金額)
                FROM 家計簿アーカイブ
               WHERE 出金額 > 0
                 AND 費目 = '食費')
 WHERE 費目 = '食費'
