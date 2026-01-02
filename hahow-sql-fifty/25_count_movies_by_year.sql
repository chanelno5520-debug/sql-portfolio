-- Problem:
-- 從 imdb.movies 計算每一年有幾部「經典電影」(資料集已是經典/高評等電影清單) 並輸出每年的電影數
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 GROUP BY 聚合是否正確（每一年都應只出現 1 筆）
-- 2) 驗證資料匯入是否完整（年份分布是否合理）
--
-- How to interpret:
-- - 每個 release_year 對應一個 number_of_movies：聚合口徑正確，可用於報表
-- - 若某年重複出現多筆：代表 GROUP BY 或欄位使用錯誤
--
-- Notes:
-- - 本題重點是 GROUP BY + COUNT(*)

SELECT
  release_year,
  COUNT(*) AS number_of_movies
FROM movies
GROUP BY release_year;
