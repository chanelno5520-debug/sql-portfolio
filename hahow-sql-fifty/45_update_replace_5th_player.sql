-- Problem:
-- 承接上題：將第五位球員 Hakeem Olajuwon 替換成 Tim Duncan
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 UPDATE 是否只影響目標資料列（避免誤更新多筆）
-- 2) 更新後用 SELECT 對帳結果是否符合預期
--
-- How to interpret:
-- - 更新後清單出現 Tim Duncan 且 Hakeem Olajuwon 不再存在：代表 UPDATE 正確
-- - 若同時存在兩者：可能 UPDATE 條件沒命中（WHERE 寫錯）或新增而非更新
--
-- Notes:
-- - 實務上建議用主鍵更新；此題以 name 當定位條件（教學資料情境）

UPDATE favorite_players
SET
  name = 'Tim Duncan',
  years_pro = 19,
  ppg = 19.0
WHERE name = 'Hakeem Olajuwon';

-- Verify
SELECT *
FROM favorite_players;
