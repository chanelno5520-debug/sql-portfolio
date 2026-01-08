-- Problem:
-- 從 nba.players 使用子查詢計算各國籍球員佔比（player_percentage）
--
-- Scenario (QA / 系統測試):
-- 1) 驗證分組聚合（GROUP BY country）後，能用子查詢取得總人數做比例計算
-- 2) 驗證比例是否為浮點數（避免整數除法導致全部變 0）
--
-- How to interpret:
-- - USA 等主要國籍佔比最大且加總接近 1：計算口徑合理
-- - 全部變 0 或比例怪：多半是整數除法或 total 子查詢錯誤
--
-- Notes:
-- - SQLite 建議用 CAST(... AS REAL) 避免整數除法
-- - 需要時可加 WHERE country IS NOT NULL 排除缺值

SELECT
  country,
  CAST(COUNT(*) AS REAL) / (SELECT COUNT(*) FROM players) AS player_percentage
FROM players
GROUP BY country
ORDER BY player_percentage DESC, country;
