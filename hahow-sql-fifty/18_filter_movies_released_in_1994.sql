-- Problem:
-- 從 imdb.movies 篩選上映年份為 1994 的電影
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 release_year 欄位是否可被正確篩選（型態/內容一致性）
-- 2) 驗證資料集在特定年份是否有合理筆數（資料完整性）
--
-- How to interpret:
-- - 有資料：1994 年電影可正常查出，欄位可用於報表/驗證
-- - 無資料：可能欄位型態不是字串、年份格式不同或資料缺漏
--
-- Notes:
-- - 若 release_year 為數字型態，可改為 WHERE release_year = 1994

SELECT
  *
FROM movies
WHERE release_year = '1994';
