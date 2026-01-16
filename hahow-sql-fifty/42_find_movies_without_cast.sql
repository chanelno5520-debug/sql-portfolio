-- Problem:
-- 從 imdb.movies 找出沒有任何演員資料的電影
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 movies 與 casting 的關聯是否完整
-- 2) 常見於 ETL 或資料關聯錯誤後的檢查
--
-- How to interpret:
-- - 有資料：代表該電影缺少 casting 關聯（資料品質問題）
-- - 無資料：代表電影與演員關聯完整
--
-- Notes:
-- - 這是典型的 anti-join（反向關聯檢查）情境

SELECT
  m.id,
  m.title,
  m.release_year
FROM movies m
LEFT JOIN casting c
  ON m.id = c.movie_id
WHERE c.actor_id IS NULL;
