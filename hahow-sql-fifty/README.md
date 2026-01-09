# SQL Portfolio – Hahow SQL Fifty

本作品集整理自 Hahow「SQL 的五十道練習」，  
重點放在 **SQL 基礎查詢、資料驗證與實務 QA 常見使用情境**，  
適合作為初階軟體測試（QA）與資料查詢能力的展示。

---

## 使用技術
- SQL（SQLite）
- SELECT / WHERE
- DISTINCT / LIKE / IN
- GROUP BY / COUNT / SUM
- HAVING / BETWEEN
- ORDER BY
- 日期處理（STRFTIME）
- 衍生欄位計算（Calculated Fields）
- 子查詢（Subquery）
- JOIN（多表關聯）
- Window Functions（ROW_NUMBER / RANK）
- UNION ALL（垂直合併）
- 基礎資料品質檢查（Data Validation）

---

## 題目與實務說明（01–34）
> 01–34 題已整理於 repo（涵蓋：基礎查詢、聚合、HAVING、子查詢、比例計算等）。

---

## JOIN / Window / UNION（35–39）

### 35_top_ten_countries_total_confirmed.sql
- 查詢全球前十大累積確診國家（JOIN + SUM + ORDER BY）
- 用於 KPI 對帳與資料合理性檢查

### 36_party_votes_percentage_union.sql
- 查詢三大政黨在不分區/區域立委的得票率（UNION ALL + SUM/總票）
- 用於跨資料表口徑一致性驗證（QA 很常用）

### 37_lakers_players_ppg_join.sql
- 查詢 Lakers 球員 roster 與生涯場均得分（多表 JOIN）
- 用於名單對帳與關聯正確性驗證

### 38_team_scoring_leader_window.sql
- 查詢各隊得分王（Window Function：每隊 ppg 最高）
- 用於「每群組取第一名」的實務查詢

### 39_hanks_and_dicaprio_filmography.sql
- 查詢兩位演員作品並標記是否第一主角（JOIN + is_lead_actor）
- 用於多表關聯結果驗證與欄位邏輯測試

---

## 作品集使用情境
- 軟體測試（QA）資料驗證
- 系統測試（API / DB 資料對帳）
- 初階資料查詢與資料品質檢查
- 面試展示 SQL 實務理解能力（不只是寫得出查詢，而是能解釋「怎麼驗證對不對」）

---

## 關於作者
- 具備 SQL 查詢、API 測試（Postman）與基礎 Python 自動化概念
- 目標職務：軟體測試工程師（QA）
- 地區：高雄（可兼職／實習）
