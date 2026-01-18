-- Problem:
-- 在 favorite_players 插入 5 筆觀測值
--
-- Scenario (QA / 系統測試):
-- 1) 驗證 INSERT 是否成功、資料筆數是否正確（rowcount 檢查）
-- 2) 驗證欄位型態：years_pro 為整數、ppg 為浮點數
--
-- How to interpret:
-- - 查詢回來 5 筆：插入成功，可進一步做更新與驗證
-- - 筆數不是 5：可能漏插/重複插入/欄位對應錯誤
--
-- Notes:
-- - 這裡先插入 Hakeem Olajuwon，下一題會更新成 Tim Duncan

INSERT INTO favorite_players (name, years_pro, ppg)
VALUES
  ('Steve Nash',        19, 14.3),
  ('Michael Jordan',    14, 30.1),
  ('Paul Pierce',       19, 19.7),
  ('Kevin Garnett',     21, 17.8),
  ('Hakeem Olajuwon',   18, 21.8);
