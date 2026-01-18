-- Problem:
-- 從 nba 資料庫查詢截至 2021-03-31：
-- 得分王(ppg)、助攻王(apg)、籃板王(rpg)、抄截王(spg)、阻攻王(bpg)
-- 若有並列（例如 bpg 可能同值），需保留並列者
--
-- Scenario (QA / 系統測試):
-- 1) 驗證各指標取 MAX 的方式能找出 leader（含並列）
-- 2) 驗證 players 與 career_summaries 的 personId 關聯
--
-- How to interpret:
-- - 回傳 6 筆（其中 bpg 可能 2 人並列）：符合題目預期
-- - 少於 5 筆：代表某指標 MAX 條件或 join 出錯
--
-- Notes:
-- - 用 UNION ALL 組合各指標 leader
-- - 用 = (SELECT MAX(...)) 方式可自然保留並列

SELECT p.firstName, p.lastName, 'rpg' AS category, cs.rpg AS value
FROM career_summaries cs
JOIN players p ON p.personId = cs.personId
WHERE cs.rpg = (SELECT MAX(rpg) FROM career_summaries)

UNION ALL

SELECT p.firstName, p.lastName, 'bpg' AS category, cs.bpg AS value
FROM career_summaries cs
JOIN players p ON p.personId = cs.personId
WHERE cs.bpg = (SELECT MAX(bpg) FROM career_summaries)

UNION ALL

SELECT p.firstName, p.lastName, 'apg' AS category, cs.apg AS value
FROM career_summaries cs
JOIN players p ON p.personId = cs.personId
WHERE cs.apg = (SELECT MAX(apg) FROM career_summaries)

UNION ALL

SELECT p.firstName, p.lastName, 'spg' AS category, cs.spg AS value
FROM career_summaries cs
JOIN players p ON p.personId = cs.personId
WHERE cs.spg = (SELECT MAX(spg) FROM career_summaries)

UNION ALL

SELECT p.firstName, p.lastName, 'ppg' AS category, cs.ppg AS value
FROM career_summaries cs
JOIN players p ON p.personId = cs.personId
WHERE cs.ppg = (SELECT MAX(ppg) FROM career_summaries);
