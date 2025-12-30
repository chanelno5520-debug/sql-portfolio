-- 題目 06
-- 從 covid19 的 daily_report 資料表中
-- 計算 Active 病例數
--
-- 計算公式：
-- Active = Confirmed - Recovered - Deaths
--
-- 實務用途（QA / 系統測試）：
-- 1. 驗證資料欄位之間的邏輯關係是否正確
-- 2. 檢查資料匯入後是否有異常數值

SELECT
    Confirmed,
    Recovered,
    Deaths,
    (Confirmed - Recovered - Deaths) AS Active
FROM daily_report;
