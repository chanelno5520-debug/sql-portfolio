-- Problem:
-- 從 time_series 中找出單日新增確診數（Daily_Cases）最高的前 10 筆紀錄
--
-- Scenario (QA / 系統測試):
-- 1) 驗證疫情資料排序是否正確
-- 2) 驗證 Daily_Cases 欄位是否為合理的數值型態
--
-- How to interpret:
-- - 前 10 筆資料合理：可用於趨勢分析或報表呈現
-- - 若出現 NULL 或極端值：可能資料匯入或來源有異常
--
-- Notes:
-- - 本題常見於資料分析或系統驗證中的「極值檢查」

SELECT
  Date,
  Country_Region,
  Daily_Cases
FROM time_series
ORDER BY Daily_Cases DESC
LIMIT 10;
