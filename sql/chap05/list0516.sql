SELECT COALESCE('A', 'B', 'C');      /* 結果は 'A' */
SELECT COALESCE(NULL, 'B', 'C');     /* 結果は 'B' */
SELECT COALESCE(NULL, 'B', NULL);    /* 結果は 'B' */
SELECT COALESCE(NULL, NULL, 'C');    /* 結果は 'C' */
SELECT COALESCE(数値型の列, 0);        /* 数値型の列が出力される。ただし、NULLが格納されている場合は0になる */
-- 5行目のSQL文は、「数値型の列」に具体的な列名を指定して実行する必要があります。