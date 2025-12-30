-- 題目 10
-- 依照 country 欄位分組，計算各國球員人數
--
-- 實務用途（QA）：
-- 檢查分類資料分布是否合理
-- 是否有空值或異常國家代碼

SELECT
    country,
    COUNT(*) AS player_count
FROM players
GROUP BY country;
