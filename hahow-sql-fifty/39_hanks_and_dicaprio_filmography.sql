-- Problem:
-- 從 imdb 資料庫查詢 Tom Hanks 與 Leonardo DiCaprio 的作品，
-- 並標記是否為第一主角（ord = 1）
-- 依 release_year 排序
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 movies → casting → actors 多表關聯是否正確（常見資料關聯對帳）
-- 2) 驗證布林標記（is_lead_actor）是否符合 ord 規則
--
-- How to interpret:
-- - 同一部片可能同時出現兩位演員（各自一列）：代表 casting 關聯正確
-- - is_lead_actor 分布合理：ord=1 的列為 1，其餘為 0
--
-- Notes:
-- - SQLite 中 `casting.ord = 1` 會回傳 0/1（可作為 is_lead_actor）
-- - 若你希望明確輸出 0/1，可改用 CASE WHEN ord = 1 THEN 1 ELSE 0 END

SELECT
  m.release_year,
  m.title,
  a.name,
  c.ord = 1 AS is_lead_actor
FROM movies m
JOIN casting c
  ON m.id = c.movie_id
JOIN actors a
  ON c.actor_id = a.id
WHERE a.name IN ('Tom Hanks','Leonardo DiCaprio')
ORDER BY m.release_year;
