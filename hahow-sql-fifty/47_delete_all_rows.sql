-- Problem:
-- 清空 favorite_players 資料表中的所有資料（保留表結構）
--
-- Scenario (QA / 系統測試):
-- 1) 常用於重跑測試前的資料重置
-- 2) 驗證 DELETE 與 DROP TABLE 的差異
--
-- How to interpret:
-- - SELECT 回傳 0 rows：代表資料已清空
-- - 表仍存在：結構未被破壞
--
-- Notes:
-- - SQLite 沒有 TRUNCATE TABLE
-- - 生產環境通常需搭配 transaction 或權限控管

DELETE FROM favorite_players;

-- Verify
SELECT *
FROM favorite_players;
