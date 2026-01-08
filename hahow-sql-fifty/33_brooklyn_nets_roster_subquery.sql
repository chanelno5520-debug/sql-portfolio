-- Problem:
-- 從 nba 資料庫使用子查詢找出布魯克林籃網隊（Brooklyn Nets）的球員名單
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 teamId 是否能從 teams 表正確定位到 Brooklyn Nets
-- 2) 驗證 players 表中 teamId 關聯是否正確（名單是否合理、筆數是否接近預期）
--
-- How to interpret:
-- - 回傳多筆球員姓名：代表 teams → players 的關聯可用於 roster/報表
-- - 回傳 0 筆：可能 teams 的欄位值不是 Brooklyn Nets（命名不同）或 teamId 關聯有問題
--
-- Notes:
-- - teams 的隊名欄位可能是 fullName / teamName / nickname，這裡用 OR 兼容
-- - 若你確認 teams 只有 fullName，可保留第一個條件即可

SELECT
  p.firstName,
  p.lastName
FROM players p
WHERE p.teamId = (
  SELECT t.teamId
  FROM teams t
  WHERE t.fullName = 'Brooklyn Nets'
     OR t.teamName = 'Nets'
     OR t.nickname = 'Nets'
)
ORDER BY p.lastName, p.firstName;
