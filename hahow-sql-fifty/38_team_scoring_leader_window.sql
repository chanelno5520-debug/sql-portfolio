-- Problem:
-- 從 nba 資料庫查詢各球隊的得分王（該隊生涯場均得分 ppg 最高的球員）
-- 並依隊名排序
--
-- Scenario (QA / 系統測試):
-- 1) 驗證「每隊只出 1 筆」的分組排名結果（避免同隊多筆）
-- 2) 驗證 ppg 排名邏輯是否正確（Window Function/排名）
--
-- How to interpret:
-- - 共有 30 隊、每隊 1 筆：代表 partition 排名正確
-- - 若同隊出現多筆：代表沒有正確篩選排名第一（rn=1）
--
-- Notes:
-- - 用 ROW_NUMBER() 取每隊 ppg 最高者（若並列，只保留其中 1 位）
-- - 若你希望並列全部保留，可改用 RANK()

WITH ranked AS (
  SELECT
    t.fullName AS team,
    p.firstName || ' ' || p.lastName AS player,
    cs.ppg,
    ROW_NUMBER() OVER (
      PARTITION BY t.teamId
      ORDER BY cs.ppg DESC
    ) AS rn
  FROM teams t
  JOIN players p
    ON t.teamId = p.teamId
  JOIN career_summaries cs
    ON p.personId = cs.personId
)
SELECT
  team,
  player,
  ppg
FROM ranked
WHERE rn = 1
ORDER BY team;
