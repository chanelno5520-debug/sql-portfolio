-- Problem: 預覽 admin_regions 資料表前 5 筆
-- Scenario (QA): 確認資料表是否成功載入、欄位是否合理、資料是否非空
-- How to interpret:
--   - 有資料：可繼續做欄位挑選與條件查詢
--   - 無資料或欄位怪：可能資料未匯入/資料庫選錯/表名錯

SELECT *
  FROM admin_regions
LIMIT 5;
