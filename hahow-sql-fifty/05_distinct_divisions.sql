-- Problem: 取得 teams 中不重複的分區 divname 清單
-- Scenario (QA): 檢查資料分類是否完整/是否有拼字不一致造成重複類別（例如 East/Eastern）

SELECT DISTINCT divname AS distinct_divisions
  FROM teams;
