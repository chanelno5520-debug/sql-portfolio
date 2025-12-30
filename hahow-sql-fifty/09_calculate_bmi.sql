-- 題目 09
-- Problem: 從 nba.players 依據 heightMeters、weightKilograms 計算 BMI，並四捨五入到小數點 2 位
-- Scenario (QA / 系統測試):
--   1) 驗證衍生欄位計算公式是否正確（欄位間的邏輯關係）
--   2) 驗證資料型態與 ROUND 結果格式是否符合預期（精度控制）
-- How to interpret:
--   - bmi 可正常產出且小數點 2 位：計算與格式正確，可進一步做統計/分群
--   - bmi 大量 NULL 或異常值：可能 heightMeters/weightKilograms 有缺值、或高度為 0、或欄位單位不一致
-- Notes:
--   - BMI = weight_kg / (height_m^2)

SELECT
  heightMeters,
  weightKilograms,
  ROUND(weightKilograms / (heightMeters * heightMeters), 2) AS bmi
FROM players;
