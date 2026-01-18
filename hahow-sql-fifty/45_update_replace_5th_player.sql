-- Problem:
-- 將第五位球員 Hakeem Olajuwon 替換成 Tim Duncan（更新 name / years_pro / ppg）
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 UPDATE 是否只影響目標資料（避免誤更新多列）
-- 2) 驗證更新後資料值正確（對帳）
--
-- How to interpret:
-- - Hakeem 不再出現、Tim Duncan 出現：更新成功
-- - 影響 0 列：WHERE 條件可能寫錯（name 拼字、空白、大小寫）
-- - 影響多列：代表資料有重複 name 或條件過寬（資料品質風險）
--
-- Notes:
-- - 實務上會用主鍵（id）更新更安全；本題依 name 更新

UPDATE favorite_players
SET
  name = 'Tim Duncan',
  years_pro = 19,
  ppg = 19.0
WHERE name = 'Hakeem Olajuwon';
