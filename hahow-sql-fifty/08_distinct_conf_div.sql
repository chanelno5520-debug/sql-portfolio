-- 題目 08
-- 從 NBA teams 資料表中
-- 將 confName 與 divName 組合成單一欄位
-- 並去除重複的組合結果
--
-- SQLite 字串串接使用 || 符號
--
-- 實務用途（QA / 系統測試）：
-- 1. 檢查聯盟與分區的分類組合是否正確
-- 2. 驗證資料是否有重複或異常分類

SELECT DISTINCT
    confName || ', ' || divName AS conf_div
FROM teams;
