-- Problem:
-- 從 nba 資料庫查詢截至 2021-03-31 洛杉磯湖人隊（Los Angeles Lakers）
-- 球員的生涯場均得分 ppg
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 teams → players → career_summaries 的關聯是否正確
-- 2) 驗證 roster 類查詢是否可用於名單對帳（常見 QA DB 對帳）
--
-- How to interpret:
-- - team_name 一致且 player_name/ppg 可排序：代表 join 正確、可用於報表
-- - 若 team_name 正確但球員為空：可能 players.teamId 對不到 teams.teamId
--
-- Notes:
-- - SQLite 字串串接用 ||

SELECT
  t.fullName AS team_name,
  p.firstName || ' ' || p.lastName AS player_name,
  cs.ppg
FROM teams t
JOIN players p
  ON t.teamId = p.teamId
JOIN career_summaries cs
  ON p.personId = cs.personId
WHERE t.fullName = 'Los Angeles Lakers'
ORDER BY cs.ppg DESC;
