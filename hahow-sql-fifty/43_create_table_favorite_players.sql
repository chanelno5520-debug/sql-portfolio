-- Problem:
-- 在 test 資料庫建立 favorite_players 資料表，包含 name / years_pro / ppg
--
-- Scenario (QA / 系統測試):
-- 1) 驗證資料表能被成功建立（schema 正確）
-- 2) 後續 Insert/Update 之前的環境準備
--
-- How to interpret:
-- - SELECT * FROM favorite_players; 可執行且欄位正確：建立成功
-- - 報錯：通常是表已存在或欄位型態/語法錯誤
--
-- Notes:
-- - SQLite 型態：TEXT / INTEGER / REAL

CREATE TABLE favorite_players (
  name      TEXT,
  years_pro INTEGER,
  ppg       REAL
);
