-- Problem:
-- 從 twElection2020 資料庫查詢：
-- 中國國民黨、民主進步黨、親民黨在「不分區立委」與「區域立委」的得票率
--
-- Scenario (QA / 系統測試):
-- 1) 驗證兩張表的口徑一致（同樣用：各黨得票 / 該選舉總票）
-- 2) 驗證 UNION ALL 合併後資料列數（應為 3 黨 * 2 選舉 = 6 列）
--
-- How to interpret:
-- - 產出 6 列且 votes_percentage 合理：代表聚合、分母總票與 union 合併正確
-- - 比例加總不接近 1：可能分母總票範圍不一致或資料缺漏
--
-- Notes:
-- - parties 表用於取得政黨名稱（party）
-- - legislative_at_large = 不分區立委
-- - legislative_regional = 區域立委
-- - SQLite 用 1.0 * ... 確保浮點運算（避免整數除法）

SELECT
  p.party AS party,
  '不分區立委' AS election,
  ROUND(1.0 * SUM(lal.votes) / (SELECT SUM(votes) FROM legislative_at_large), 4) AS votes_percentage
FROM legislative_at_large lal
JOIN parties p
  ON lal.party_id = p.id
WHERE p.party IN ('中國國民黨','民主進步黨','親民黨')
GROUP BY p.party

UNION ALL

SELECT
  p.party AS party,
  '區域立委' AS election,
  ROUND(1.0 * SUM(lr.votes) / (SELECT SUM(votes) FROM legislative_regional), 4) AS votes_percentage
FROM legislative_regional lr
JOIN parties p
  ON lr.party_id = p.id
WHERE p.party IN ('中國國民黨','民主進步黨','親民黨')
GROUP BY p.party

ORDER BY
  election,
  CASE party
    WHEN '中國國民黨' THEN 1
    WHEN '民主進步黨' THEN 2
    WHEN '親民黨' THEN 3
    ELSE 99
  END;
