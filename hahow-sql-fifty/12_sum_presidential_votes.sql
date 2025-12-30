-- 題目 12
-- Problem: 從 twElection2020.presidential 彙總「總統副總統」投票總票數
-- Scenario (QA / 系統測試):
--   1) 驗證 votes 欄位是否為數值、且總和是否落在合理範圍（避免字串/缺值導致加總錯誤）
--   2) 驗證聚合結果可作為報表 KPI（總投票數）
-- How to interpret:
--   - total_presidential_votes = 14300940：符合預期，可進一步拆分縣市/候選人分析
--   - 結果偏差很大：可能重複列、漏資料、或 votes 欄位單位/定義不同
-- Notes:
--   - 本題核心是 SUM 聚合

SELECT
  SUM(votes) AS total_presidential_votes
FROM presidential;
