CREATE TABLE accounts (
  account_id       INTEGER       PRIMARY KEY,
  account_name     VARCHAR(30)   NOT NULL
);
CREATE TABLE expenses (
  expense_id       CHAR(3)       PRIMARY KEY,
  expense_name     VARCHAR(30)   NOT NULL UNIQUE,
  category         CHAR(1)       NOT NULL
                                 CHECK(category IN ('I', 'O'))
);
CREATE TABLE transactions (
  transaction_id   CHAR(5)       PRIMARY KEY,
  transaction_date DATE          NOT NULL,
  account_id       INTEGER       NOT NULL
                                 REFERENCES accounts(account_id),
  note             VARCHAR(100)
);
CREATE TABLE transaction_items (
  transaction_id   CHAR(5)       NOT NULL
                                 REFERENCES transactions(transaction_id),
  expense_id       CHAR(3)       NOT NULL
                                 REFERENCES expenses(expense_id),
  amount           INTEGER       NOT NULL DEFAULT 0,
  PRIMARY KEY(transaction_id, expense_id)
);
CREATE TABLE tags (
  tag_id           INTEGER       PRIMARY KEY,
  note             VARCHAR(100),
  author_id        INTEGER       NOT NULL
                                 REFERENCES accounts(account_id)
);
CREATE TABLE taggings (
  tag_id           INTEGER       NOT NULL
                                 REFERENCES TAGS(tag_id),
  transaction_id   CHAR(5)       NOT NULL
                                 REFERENCES transactions(transaction_id),
  PRIMARY KEY(tag_id, transaction_id)
);
CREATE INDEX idx_accounts_account_name ON accounts(account_name);
CREATE INDEX idx_expenses_expense_name ON expenses(expense_name);
CREATE INDEX idx_transactions_transaction_date ON transactions(transaction_date);
CREATE INDEX idx_transactions_account_id ON transactions(account_id);
CREATE INDEX idx_transaction_items_expense_id ON transaction_items(expense_id);
CREATE INDEX idx_transaction_items_amount ON transaction_items(amount);
CREATE INDEX idx_tags_author_id ON tags(author_id);
INSERT INTO accounts ( account_id,account_name ) VALUES ( 1,'立花いずみ' );
INSERT INTO accounts ( account_id,account_name ) VALUES ( 2,'立花コウジ' );
INSERT INTO expenses ( expense_id,expense_name,category ) VALUES ( 'H01','住居費','O' );
INSERT INTO expenses ( expense_id,expense_name,category ) VALUES ( 'H17','振込手数料','O' );
INSERT INTO expenses ( expense_id,expense_name,category ) VALUES ( 'H19','図書費','O' );
INSERT INTO expenses ( expense_id,expense_name,category ) VALUES ( 'H03','飲食費','O' );
INSERT INTO transactions ( transaction_id,transaction_date,account_id,note ) VALUES ( '41001','2024-04-10',1,'家賃を振り込んだ' );
INSERT INTO transactions ( transaction_id,transaction_date,account_id,note ) VALUES ( '41201','2024-04-12',2,'『スッキリわかるJava入門』' );
INSERT INTO transactions ( transaction_id,transaction_date,account_id,note ) VALUES ( '41202','2024-04-12',2,'2次会で後輩におごった' );
INSERT INTO transaction_items ( transaction_id,expense_id,amount ) VALUES ( '41001','H01',65000 );
INSERT INTO transaction_items ( transaction_id,expense_id,amount ) VALUES ( '41001','H17',525 );
INSERT INTO transaction_items ( transaction_id,expense_id,amount ) VALUES ( '41201','H19',2730 );
INSERT INTO transaction_items ( transaction_id,expense_id,amount ) VALUES ( '41202','H03',11000 );
