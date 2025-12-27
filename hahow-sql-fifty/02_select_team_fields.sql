-- Problem: 從 teams 資料表挑選需要的欄位並預覽前 10 筆
-- Scenario (QA): 避免 SELECT *，只取會被用到/需要核對的欄位，提升可讀性與效率

SELECT confName,
       divName,
       fullName
  FROM teams
LIMIT 10;
