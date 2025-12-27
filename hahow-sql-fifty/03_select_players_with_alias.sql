-- Problem: 從 players 資料表查出球員姓名，並用 AS 統一命名風格
-- Scenario (QA): 查詢結果常需要交付他人或對帳（例如 API 欄位），用 AS 讓欄位一眼看懂

SELECT firstName AS first_name,
       lastname  AS last_name
  FROM players
LIMIT 5;
