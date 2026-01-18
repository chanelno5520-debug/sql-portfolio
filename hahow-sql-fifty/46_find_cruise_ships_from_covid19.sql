-- Problem:
-- 從 covid19 資料庫查詢兩艘郵輪（Grand Princess / Diamond Princess）的資訊：
-- iso2、Country_Region、Province_State、Confirmed
--
-- Scenario (QA / 系統測試):
-- 1) 驗證特殊地區（郵輪）是否仍存在於資料集中（資料完整性）
-- 2) 驗證 JOIN key（Combined_Key）能正確取得 iso2
--
-- How to interpret:
-- - 回傳 4 筆且包含 Canada/US、Diamond Princess/Grand Princess：查詢邏輯正確
-- - 筆數不為 4：可能條件欄位或 join key 使用錯誤
--
-- Notes:
-- - Province_State 在 daily_report
-- - iso2 在 lookup_table
-- - 用 SUM 兼容資料可能出現多列的情況

SELECT
  l.iso2,
  d.Country_Region,
  d.Province_State,
  SUM(d.Confirmed) AS Confirmed
FROM daily_report d
JOIN lookup_table l
  ON d.Combined_Key = l.Combined_Key
WHERE d.Province_State IN ('Grand Princess', 'Diamond Princess')
GROUP BY
  l.iso2,
  d.Country_Region,
  d.Province_State
ORDER BY
  l.iso2,
  d.Country_Region,
  d.Province_State;
