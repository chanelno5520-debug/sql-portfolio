-- 題目 07
-- 從 NBA players 資料表中
-- 使用身高與體重計算 BMI
--
-- BMI 計算公式：
-- BMI = weightKilograms / (heightMeters * heightMeters)
--
-- 實務用途（QA / 資料驗證）：
-- 1. 驗證身高、體重資料是否合理
-- 2. 作為資料品質檢查或異常偵測的前置分析

SELECT
    heightMeters,
    weightKilograms,
    (weightKilograms / (heightMeters * heightMeters)) AS bmi
FROM players;
