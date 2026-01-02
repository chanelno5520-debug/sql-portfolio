-- Problem:
-- 從 imdb.movies 計算每一年有幾部「經典電影」，並只保留「每年至少 5 部」的年份（HAVING）
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 HAVING 用於「聚合後篩選」是否正確（避免把 WHERE 用錯位置）
-- 2) 驗證門檻值（>= 5）對結果的影響是否符合預期
--
-- How to interpret:
-- - 只出現 number_of_movies >= 5 的年份：HAVING 條件正確
-- - 若出現 < 5：代表 HAVING 條件或聚合別名使用錯誤
--
-- Notes:
-- - HAVING 是針對 GROUP BY 後的結果篩選

SELECT
  release_year,
  COUNT(*) AS number_of_movies
FROM movies
GROUP BY release_year
HAVING number_of_movies >= 5;
