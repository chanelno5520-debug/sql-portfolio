-- Problem:
-- 從 twElection2020.presidential 計算各組候選人的得票率（votes_percentage）
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 SUM(votes) 聚合後再除以「總票數」子查詢，得到正確比例
-- 2) 驗證輸出格式（百分比、四捨五入到小數點 2 位）
--
-- How to interpret:
-- - 三位候選人得票率加總接近 100%：比例口徑合理
-- - 加總不接近 100%：可能資料重複/缺漏、或總票數 subquery 範圍不一致
--
-- Notes:
-- - SQLite 可用 printf 格式化為 'xx.xx%'
-- - 100.0 * ... 確保浮點運算，避免整數除法

SELECT
  candidate_id,
  printf('%.2f%%', 100.0 * SUM(votes) / (SELECT SUM(votes) FROM presidential)) AS votes_percentage
FROM presidential
GROUP BY candidate_id
ORDER BY candidate_id;
