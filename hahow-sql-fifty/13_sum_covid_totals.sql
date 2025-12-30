-- 題目 13
-- Problem: 從 covid19.daily_report 彙總截至 2021-03-31 的全球總確診、總痊癒、總死亡
-- Scenario (QA / 系統測試):
--   1) 驗證資料匯入後的總量是否合理（高層 KPI 對帳）
--   2) 驗證關鍵欄位 Confirmed/Recovered/Deaths 是否存在缺值或異常值（如負數）
-- How to interpret:
--   - 三個總數符合預期：資料可用於趨勢/地區比較/儀表板
--   - 總數偏差或 NULL：可能欄位缺值、欄位型態錯、或資料期間不一致
-- Notes:
--   - 題目註明不需考慮 Last_Update；daily_report 期間有效到 2021-03-31

SELECT
  SUM(Confirmed) AS total_confirmed,
  SUM(Recovered) AS total_recovered,
  SUM(Deaths)    AS total_deaths
FROM daily_report;
