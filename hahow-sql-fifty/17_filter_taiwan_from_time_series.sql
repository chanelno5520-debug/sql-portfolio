-- Problem:
-- 從 covid19.time_series 篩選出台灣（Taiwan）的觀測值
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 WHERE 條件篩選是否正確（國家名稱是否一致）
-- 2) 驗證匯入資料是否包含台灣資料（資料完整性檢查）
--
-- How to interpret:
-- - 有資料：代表 time_series 內含 Taiwan，且欄位/值可用於後續分析
-- - 無資料：可能 Country_Region 命名不同（例如 Taiwan*）、資料缺漏或載入失敗
--
-- Notes:
-- - SQLite 欄位大小寫不敏感，但建議實務統一用 Country_Region
-- - 若遇到命名差異，可改用 LIKE 'Taiwan%'

SELECT
  *
FROM time_series
WHERE Country_Region = 'Taiwan';
