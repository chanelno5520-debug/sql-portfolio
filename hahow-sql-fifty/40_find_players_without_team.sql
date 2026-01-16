-- Problem:
-- 從 nba.players 找出目前沒有隸屬任何球隊的球員（teamId 為 NULL）
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 players 表是否存在未被指派 teamId 的資料
-- 2) 常見於資料匯入或 roster 更新後的完整性檢查
--
-- How to interpret:
-- - 有資料：代表存在自由球員或資料尚未補齊
-- - 無資料：代表 roster 關聯完整（所有球員皆有球隊）
--
-- Notes:
-- - NULL 檢查是 QA / DB 驗證中最基本也最重要的項目之一

SELECT
  personId,
  firstName,
  lastName
FROM players
WHERE teamId IS NULL;
