-- Problem:
-- 從 covid19.lookup_table 篩選 Country_Region 名稱包含 'land' 的國家
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 LIKE 模糊查詢是否符合預期（字串匹配）
-- 2) 常用於資料探索：快速找出符合命名規則的分類值
--
-- How to interpret:
-- - 有資料：表示 LIKE 規則可用於資料探索/測試驗證
-- - 無資料：可能欄位內容不同、大小寫或資料集不含該模式
--
-- Notes:
-- - SQLite 的 LIKE 預設通常不區分大小寫（依設定而異）
-- - 若要更嚴謹可改用 LOWER(Country_Region) LIKE '%land%'

SELECT
  *
FROM lookup_table
WHERE Country_Region LIKE '%land%';
