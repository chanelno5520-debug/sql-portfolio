-- Problem:
-- 從 nba.teams 找出沒有任何球員的球隊（LEFT JOIN + NULL）
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 teams 與 players 的關聯是否完整
-- 2) 常用於找出「孤兒資料」（parent 有、child 沒有）
--
-- How to interpret:
-- - 有資料：代表該隊目前沒有球員或資料關聯異常
-- - 無資料：代表 teams → players 關聯完整
--
-- Notes:
-- - 使用 LEFT JOIN 才能保留「沒有對應資料」的主表紀錄

SELECT
  t.teamId,
  t.fullName
FROM teams t
LEFT JOIN players p
  ON t.teamId = p.teamId
WHERE p.personId IS NULL;
