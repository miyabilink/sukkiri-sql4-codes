CREATE TABLE 学部 (
  ID    CHAR(1),      -- 学部を一意に特定する文字
  名前   VARCHAR(20),  -- 学部の名前（必須、重複不可）
  備考   VARCHAR(100)  -- 特にない場合は、'特になし'を設定
)