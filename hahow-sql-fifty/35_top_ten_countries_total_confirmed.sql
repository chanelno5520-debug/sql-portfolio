-- Problem:
-- 從 covid19 資料庫查詢截至 2021-03-31 全球前十大「累積確診」國家（total_confirmed）
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 JOIN key（Combined_Key）是否正確，避免重複或漏資料
-- 2) 驗證彙總口徑（SUM Confirmed）是否合理，常用於 KPI 對帳
--
-- How to interpret:
-- - 前 10 名國家合理（US / Brazil / India 等）：代表資料與彙總邏輯正確
-- - 數字異常偏大：可能 join 造成倍增（key 不唯一）或資料重複載入
--
-- Notes:
-- - 本題使用 lookup_table + daily_report，以 Combined_Key 串接
-- - daily_report 本資料集期間截至 2021-03-31（題目指定），可直接彙總

SELECT
  lookup_table.Country_Region,
  SUM(daily_report.Confirmed) AS total_confirmed
FROM lookup_table
JOIN daily_report
  ON lookup_table.Combined_Key = daily_report.Combined_Key
GROUP BY lookup_table.Country_Region
ORDER BY total_confirmed DESC
LIMIT 10;
