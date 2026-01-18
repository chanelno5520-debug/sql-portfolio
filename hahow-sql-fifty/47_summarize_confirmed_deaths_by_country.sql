-- Problem:
-- 從 covid19 資料庫彙總截至 2021-03-31（資料集截止日）
-- 各國的 Confirmed 與 Deaths（輸出 192 國）
--
-- Scenario (QA / 系統測試):
-- 1) 驗證彙總口徑（按 Country_Region 聚合）是否正確
-- 2) 常用於 KPI 對帳：總確診/總死亡是否能正確由 DB 產出
--
-- How to interpret:
-- - 輸出列數為 192：資料完整且 group by 正確
-- - 若列數偏少：可能 Country_Region 有 NULL 或欄位使用錯誤
--
-- Notes:
-- - daily_report 為彙總來源表，直接按 Country_Region 聚合

SELECT
  Country_Region,
  SUM(Confirmed) AS Confirmed,
  SUM(Deaths)    AS Deaths
FROM daily_report
GROUP BY Country_Region
ORDER BY Country_Region;
