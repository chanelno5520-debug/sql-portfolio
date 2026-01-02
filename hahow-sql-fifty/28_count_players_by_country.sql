-- Problem:
-- 從 nba.players 依 country 計算各國球員數，並依球員數由多到少排序
--
-- Scenario (QA / 系統測試):
-- 1) 驗證分類統計（各 country 的筆數）是否合理
-- 2) 驗證 ORDER BY DESC 排序是否正確（報表呈現常用）
--
-- How to interpret:
-- - number_of_players 由大到小排序：排序正確
-- - country 出現 NULL/空字串：可能需要資料清洗（分類欄位品質）
--
-- Notes:
-- - 這題是最典型的「維度統計」(dimension count)

SELECT
  country,
  COUNT(*) AS number_of_players
FROM players
GROUP BY country
ORDER BY number_of_players DESC;
