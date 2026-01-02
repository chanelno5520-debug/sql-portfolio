-- Problem:
-- 從 imdb.movies 篩選出導演為 Christopher Nolan 或 Peter Jackson 的電影，並依導演排序
--
-- Scenario (QA / 系統測試):
-- 1) 驗證多值條件（IN / OR）是否能正確篩選
-- 2) 驗證 ORDER BY 是否能穩定排序（產出可讀報表）
--
-- How to interpret:
-- - 結果依 director 排序：代表查詢可作為「導演作品清單」或資料對帳
-- - 若導演欄位出現 NULL 或拼字不一致：可能需要清洗（資料品質問題）
--
-- Notes:
-- - IN 寫法可讀性較好，也容易擴充更多導演名單

SELECT
  *
FROM movies
WHERE director IN ('Christopher Nolan','Peter Jackson')
ORDER BY director;
