/* 問題1-3の解答 */
-- 1
SELECT * FROM 家計簿 WHERE 入金額 = 50000;
-- 2
DELETE FROM 家計簿 WHERE 出金額 > 4000;
-- 3
UPDATE 家計簿
   SET メモ = 'カフェラテを購入'
 WHERE 日付 = '2024-02-03';


/* 本コンテンツは新刊購入読者様限定の特典です */
/* 
dokoQL及び関連サポートコンテンツは、読者様のご購入により維持、管理、運営されています。
このライブラリに含まれるコンテンツにつきましても、書籍『スッキリわかるSQL入門 第4版』の
新刊を購入された読者様にご自身の学習向けとして提供されています。
その他の方によるご利用や、複製・ダウンロード・第三者への開示・再配布等は実施いただけません。

詳細につきましては、dokoQLヘルプに掲載しております利用規約をご確認ください。
https://support.flairlink.net/hc/ja/categories/4408390734617
*/