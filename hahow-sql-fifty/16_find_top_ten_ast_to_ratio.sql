-- Problem:
-- 從 career_summaries 中找出 Assist / Turnover Ratio 最高的前 10 位球員
--
-- Scenario (QA / 系統測試):
-- 1) 驗證計算欄位的排序是否正確
-- 2) 驗證 CAST 是否避免整數除法造成誤差
-- 3) 檢查 Turnovers 為 0 時的資料合理性
--
-- How to interpret:
-- - Ratio 合理且排序正確：計算與排序邏輯正確
-- - 出現 NULL：可能 Turnovers 為 0，需定義資料處理規則
--
-- Notes:
-- - SQLite 中需使用 CAST 轉為 REAL 才能正確計算比例

SELECT
  personId,
  assists,
  turnovers,
  CAST(assists AS REAL) / turnovers AS assist_turnover_ratio
FROM career_summaries
ORDER BY assist_turnover_ratio DESC
LIMIT 10;
