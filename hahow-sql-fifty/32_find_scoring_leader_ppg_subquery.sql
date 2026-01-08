-- Problem:
-- 從 nba 資料庫使用子查詢找出場均得分王（ppg 最高的球員）
--
-- Scenario (QA / 系統測試):
-- 1) 驗證子查詢抓到的 MAX(ppg) 能正確定位到球員 personId
-- 2) 驗證 join players 後能正確輸出球員姓名
--
-- How to interpret:
-- - 回傳 1 筆（或多筆並列）：代表得分王查詢邏輯正確
-- - 回傳 0 筆：可能 personId 對不上、或 ppg 欄位/表名用錯
--
-- Notes:
-- - 假設 career_summaries(personId, ppg)、players(personId, firstName, lastName)
-- - 若存在並列 ppg，會回傳多筆（是合理的）

SELECT
  p.firstName,
  p.lastName
FROM players p
WHERE p.personId IN (
  SELECT cs.personId
  FROM career_summaries cs
  WHERE cs.ppg = (SELECT MAX(ppg) FROM career_summaries)
);
