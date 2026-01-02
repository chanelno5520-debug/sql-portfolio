-- Problem:
-- 從 career_summaries 中找出生涯平均得分（ppg）最高的前 10 位球員
--
-- Scenario (QA / 系統測試):
-- 1) 驗證排序（ORDER BY DESC）是否正確
-- 2) 驗證數值欄位（ppg）是否可正確用於排名
--
-- How to interpret:
-- - 前 10 名 ppg 合理：排序與欄位使用正確
-- - 結果順序異常：可能排序方向錯誤或 ppg 欄位有 NULL
--
-- Notes:
-- - LIMIT 10 為 SQLite / PostgreSQL / MySQL 通用語法

SELECT
  personId,
  ppg
FROM career_summaries
ORDER BY ppg DESC
LIMIT 10;
