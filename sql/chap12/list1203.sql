/* 利用者と費目別の入出金統計を見るには */
SELECT U.account_name AS 利用者名, H.expense_name AS 費目名,
       S.total AS 合計金額
  FROM (SELECT K.account_id, M.expense_id,
               SUM(M.amount) AS total
          FROM transaction_items AS M
          JOIN expenses AS H
            ON M.expense_id = H.expense_id
          JOIN transactions AS K
            ON M.transaction_id = K.transaction_id
         GROUP BY K.account_id, M.expense_id) AS S
  JOIN accounts AS U
    ON S.account_id = U.account_id
  JOIN expenses AS H
    ON S.expense_id = H.expense_id
