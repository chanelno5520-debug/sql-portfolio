-- 題目 11
-- Problem: 從 covid19.time_series 依據 Date，用 STRFTIME 查詢有哪些不重複的月份（YYYY-MM）
-- Scenario (QA / 系統測試):
--   1) 驗證 Date 欄位格式可被日期函數解析（資料格式健康度）
--   2) 驗證時間序列涵蓋月份範圍是否符合預期（是否缺月/多月）
-- How to interpret:
--   - distinct months 為連續且合理：資料完整，可做趨勢/留存/分月統計
--   - 出現 NULL/空值或缺月：可能 Date 格式不一致、資料缺漏或匯入不完整
-- Notes:
--   - STRFTIME 為 SQLite 常用日期格式化函數

SELECT DISTINCT
  STRFTIME('%Y-%m', Date) AS distinct_year_month
FROM time_series
ORDER BY distinct_year_month;
