-- Problem:
-- 從 twElection2020.presidential 依 candidate_id 彙總總得票數（SUM）
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 SUM 聚合是否正確（KPI 對帳：各候選人總票數）
-- 2) 驗證分組欄位 candidate_id 是否能正確切分資料
--
-- How to interpret:
-- - 每個 candidate_id 對應一筆 total_votes：聚合正確
-- - total_votes 明顯偏小/偏大：可能資料重複列、漏資料或 votes 型態異常
--
-- Notes:
-- - 常用於報表或系統測試：DB 資料對帳（總票數、總金額等）

SELECT
  candidate_id,
  SUM(votes) AS total_votes
FROM presidential
GROUP BY candidate_id;
