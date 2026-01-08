-- Problem:
-- 從 nba.players 使用子查詢找出「身高最高」與「身高最矮」的球員（可含並列）
--
-- Scenario (QA / 系統測試):
-- 1) 驗證子查詢 MAX/MIN 的聚合結果是否能正確被外層 WHERE 使用
-- 2) 驗證是否能涵蓋「並列」情況（例如最矮身高多位球員同值）
--
-- How to interpret:
-- - 最高 1 筆 + 最矮多筆（或反之）：代表查詢可正確涵蓋並列極值
-- - 少抓到並列：通常是只用 LIMIT 1 或排序取一筆造成漏抓
--
-- Notes:
-- - 使用 IN 搭配 MAX/MIN 讓查詢簡潔且支援並列
-- - 依 heightMeters DESC 排序，方便先看到最高者

SELECT
  firstName,
  lastName,
  heightMeters
FROM players
WHERE heightMeters IN (
  (SELECT MAX(heightMeters) FROM players),
  (SELECT MIN(heightMeters) FROM players)
)
ORDER BY heightMeters DESC, lastName, firstName;
