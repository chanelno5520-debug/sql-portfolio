-- Problem:
-- 從 imdb.actors 篩選出 Tom Hanks、Christian Bale、Leonardo DiCaprio 三位演員
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 IN 條件查詢是否正確（多值比對）
-- 2) 驗證 name 欄位是否一致（大小寫、空白、特殊字元）
--
-- How to interpret:
-- - 回傳 3 筆：代表資料命名一致且查詢條件正確
-- - 少於 3 筆：可能名字拼法不同（例如空白/縮寫）或資料缺漏
--
-- Notes:
-- - 若要更耐用，可用 TRIM(name) 或用 LIKE 做模糊比對（但可能誤抓同名）

SELECT
  *
FROM actors
WHERE name IN ('Tom Hanks','Christian Bale','Leonardo DiCaprio');
