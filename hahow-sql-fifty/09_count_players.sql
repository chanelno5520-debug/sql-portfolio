-- 題目 09
-- 計算 players 資料表的總筆數
--
-- 實務用途（QA / 系統測試）：
-- 1. 驗證資料是否完整匯入
-- 2. 與系統或 API 回傳的筆數進行對帳

SELECT
    COUNT(*) AS total_players
FROM players;
