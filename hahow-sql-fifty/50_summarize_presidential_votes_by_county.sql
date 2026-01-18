-- Problem:
-- 從 twElection2020 資料庫查詢三組總統候選人在各縣市的得票數（pivot）
-- 輸出欄位：county, soong_yu_votes, han_chang_votes, tsai_lai_votes
--
-- Scenario (QA / 系統測試):
-- 1) 驗證分組彙總（按 county）是否正確（應為 22 縣市）
-- 2) 驗證 pivot 後三欄加總可對帳全國總票數（KPI 對帳）
--
-- How to interpret:
-- - 22 筆縣市，且三欄合計分別對上：pivot 與 group by 正確
-- - 合計對不上：候選人對應的 candidate_id 可能映射錯誤
--
-- Notes:
-- - 依課程資料集：candidate_id = 1(宋余)、2(韓張)、3(蔡賴)
-- - 用條件聚合完成 pivot

SELECT
  county,
  SUM(CASE WHEN candidate_id = 1 THEN votes ELSE 0 END) AS soong_yu_votes,
  SUM(CASE WHEN candidate_id = 2 THEN votes ELSE 0 END) AS han_chang_votes,
  SUM(CASE WHEN candidate_id = 3 THEN votes ELSE 0 END) AS tsai_lai_votes
FROM presidential
GROUP BY county
ORDER BY county;
