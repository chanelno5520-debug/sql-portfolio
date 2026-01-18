-- Problem:
-- 從 imdb 資料庫查詢：
-- 「魔戒三部曲」與「蝙蝠俠三部曲」的電影資訊與演員名單
-- 並在同一三部曲內去除重複演員（顯示 DISTINCT）
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 movies → casting → actors 的多表關聯是否正確
-- 2) 驗證三部曲內重複出演屬正常情況，需 DISTINCT 去重（資料呈現口徑）
--
-- How to interpret:
-- - 結果約 66 筆，且包含 Christian Bale / Heath Ledger / Anne Hathaway
--   Sean Astin / Cate Blanchett / Orlando Bloom：代表關聯與去重正確
-- - 若筆數過大：可能沒做 DISTINCT（同演員多片重複）
--
-- Notes:
-- - 以片名清單定義兩個三部曲
-- - trilogy 欄位用 CASE 產生

SELECT DISTINCT
  CASE
    WHEN m.title IN ('Batman Begins', 'The Dark Knight', 'The Dark Knight Rises')
      THEN 'Batman Trilogy'
    WHEN m.title IN (
      'The Lord of the Rings: The Fellowship of the Ring',
      'The Lord of the Rings: The Two Towers',
      'The Lord of the Rings: The Return of the King'
    )
      THEN 'The Lord of the Rings Trilogy'
  END AS trilogy,
  a.name
FROM movies m
JOIN casting c
  ON m.id = c.movie_id
JOIN actors a
  ON c.actor_id = a.id
WHERE m.title IN (
  'Batman Begins', 'The Dark Knight', 'The Dark Knight Rises',
  'The Lord of the Rings: The Fellowship of the Ring',
  'The Lord of the Rings: The Two Towers',
  'The Lord of the Rings: The Return of the King'
)
ORDER BY
  trilogy,
  a.name;
