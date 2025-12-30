-- 題目 12
-- 篩選出身高與體重資料完整的球員
--
-- 實務用途（QA）：
-- 排除 NULL 值，避免後續計算（如 BMI）出錯
-- 常見於資料清洗前置步驟

SELECT
    heightMeters,
    weightKilograms
FROM players
WHERE heightMeters IS NOT NULL
  AND weightKilograms IS NOT NULL;
