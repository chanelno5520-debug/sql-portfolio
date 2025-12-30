-- 題目 10
-- Problem: 從 nba.career_summaries 依據 assists、turnovers 計算 Assist Turnover Ratio，並用 CAST 轉成 REAL
-- Scenario (QA / 系統測試):
--   1) 驗證 CAST 後欄位型態為浮點數（避免整數除法造成誤差）
--   2) 驗證 turnovers=0 的除以零情況是否會合理呈現（通常為 NULL）
-- How to interpret:
--   - ratio 為 float 且可正常計算：可用於球員表現分析
--   - ratio 出現大量 NULL：可能 turnovers 為 0 或 assists/turnovers 欄位缺值（需清洗或定義口徑）
-- Notes:
--   - SQLite 除以 0 通常回傳 NULL（在 pandas 顯示為 NaN）

SELECT
  assists,
  turnovers,
  CAST(assists AS REAL) / turnovers AS assist_turnover_ratio
FROM career_summaries;
