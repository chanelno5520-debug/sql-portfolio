-- 題目 13
-- 篩選出可正常計算 BMI 的球員資料
--
-- 條件：
-- 1. 身高、體重不可為 NULL
-- 2. 身高不可為 0（避免除以 0）
--
-- 實務用途（QA / 系統穩定性）：
-- 防止計算錯誤
-- 確保資料符合商業邏輯

SELECT
    heightMeters,
    weightKilograms,
    (weightKilograms / (heightMeters * heightMeters)) AS bmi
FROM players
WHERE heightMeters IS NOT NULL
  AND weightKilograms IS NOT NULL
  AND heightMeters > 0;
