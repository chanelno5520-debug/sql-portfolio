-- Problem:
-- 從 nba.players 依 country 計算各國球員數，並只保留「球員數介於 2 到 9」的國家（HAVING + BETWEEN）
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 HAVING + BETWEEN 是否能正確篩出中小樣本的分類（常用於抽樣/檢查異常）
-- 2) 可用於找出「非主流但有一定數量」的分類值，做資料探索或驗證
--
-- How to interpret:
-- - 只出現 number_of_players 介於 2~9：條件正確
-- - 若出現 1 或 10+：代表條件或聚合位置錯誤
--
-- Notes:
-- - BETWEEN 2 AND 9 是包含邊界（含 2 與 9）

SELECT
  country,
  COUNT(*) AS number_of_players
FROM players
GROUP BY country
HAVING number_of_players BETWEEN 2 AND 9
ORDER BY number_of_players DESC;
