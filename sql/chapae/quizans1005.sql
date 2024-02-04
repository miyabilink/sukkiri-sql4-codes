BEGIN;
UPDATE 学生 SET 学部ID = 'K'
 WHERE 学部ID = 'R';
DELETE FROM 学部
 WHERE ID = 'R';
COMMIT;

-- 処理のポイントは次の2つです。
--・原子性を確保するために、トランザクションを使う。
--・外部キー制約に違反しないように、「学生の所属変更」→「学部の削除」の順で処理する。