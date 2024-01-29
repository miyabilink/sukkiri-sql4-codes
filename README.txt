[ディレクトリ構成]
sqlディレクトリ: 書籍掲載のSQL文
setupディレクトリ: 書籍掲載のSQL文を実行する前提となるテーブルやデータを作成するSQL文

[ファイル名の規則]
listXX〜     : 第XX章 本編に掲載のSQL文
summaryXX〜  : 第XX章 「できるようになったこと」に掲載のSQL文
quizXX〜     : 第XX章 練習問題に掲載のSQL文
quizansXX〜  : 第XX章 練習問題解答に掲載のSQL文
※setupのSQL文には先頭に「pre_」が付与されています。

[前提とするDBMS]
PostgreSQL
※MySQL、OracleなどのDBMSでは一部のSQL文は動作しないことがあります。適宜改変してご利用ください。
