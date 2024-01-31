INSERT INTO 費目 (ID, 名前)
     VALUES (( SELECT NEXTVAL('費目シーケンス') ),
             '接待交際費'
            )
