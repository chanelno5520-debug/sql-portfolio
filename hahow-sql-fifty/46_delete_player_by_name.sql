-- Problem:
-- 從 favorite_players 資料表中刪除指定球員資料
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 DELETE 是否只刪除目標資料列（避免誤刪全部資料）
-- 2) 常見於測試資料清理或回復測試狀態
--
-- How to interpret:
-- - 刪除後該球員不存在，其餘資料仍在：DELETE 條件正確
-- - 資料被大量刪除：WHERE 條件遺漏（嚴重風險）
--
-- Notes:
-- - 實務上 DELETE 一定要先用 SELECT 驗證條件

DELETE FROM favorite_players
WHERE name = 'Paul Pierce';

-- Verify
SELECT *
FROM favorite_players;
