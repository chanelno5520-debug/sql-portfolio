# SQL Portfolio – Hahow SQL Fifty

本作品集整理自 Hahow「SQL 的五十道練習」，  
重點放在 **SQL 基礎查詢、資料驗證與實務 QA 常見使用情境**，  
適合作為初階軟體測試（QA）與資料查詢能力的展示。

---

## 使用技術
- SQL（SQLite）
- SELECT / WHERE
- DISTINCT
- GROUP BY / COUNT / SUM
- ORDER BY
- 日期處理（STRFTIME）
- 衍生欄位計算（Calculated Fields）
- 基礎資料品質檢查（Data Validation）

---

## 題目與實務說明

### 01_preview_admin_regions.sql
- 預覽 admin_regions 資料表內容
- 用於初步確認資料是否正確載入

### 02_select_team_fields.sql
- 選取 teams 資料表中的指定欄位
- 練習基礎 SELECT 欄位操作

### 03_select_players_with_alias.sql
- 使用 AS 為欄位設定別名
- 提升查詢結果可讀性，常用於報表或測試驗證

### 04_distinct_counties.sql
- 使用 DISTINCT 取得不重複的 county 值
- 用於檢查分類資料是否有重複或異常

### 05_distinct_divisions.sql
- 使用 DISTINCT 取得不重複的 division 名稱
- 常見於資料清洗與分類驗證情境

---

### 06_calculate_active.sql
- 依公式計算 Active 病例數  
  `Active = Confirmed - Recovered - Deaths`
- 用於驗證資料欄位間的邏輯一致性

### 07_calculate_bmi.sql
- 使用身高與體重計算 BMI
- 用於資料合理性檢查

### 08_distinct_conf_div.sql
- 合併 confName 與 divName 並去除重複分類
- 用於檢查聯盟與分區資料正確性

---

### 09_calculate_bmi.sql
- 計算 BMI 並格式化結果
- 驗證衍生欄位計算公式

### 10_calculate_assist_turnover_ratio.sql
- 計算 Assist / Turnover Ratio
- 檢查型態轉換與除以零問題

### 11_distinct_year_month.sql
- 由日期欄位萃取不重複的年月
- 檢查時間序列資料完整性

### 12_sum_presidential_votes.sql
- 彙總總統副總統選舉總投票數
- 用於 KPI 對帳與資料驗證

### 13_sum_covid_totals.sql
- 彙總 COVID-19 總確診、痊癒、死亡人數
- 用於資料完整性檢查

---

### 14_find_top_ten_ppg.sql
- 找出生涯平均得分（PPG）最高的前 10 位球員
- 驗證排序與數值欄位正確性

### 15_find_top_ten_daily_cases.sql
- 找出單日新增確診數最高的前 10 筆紀錄
- 常見於資料極值檢查與趨勢分析

### 16_find_top_ten_ast_to_ratio.sql
- 計算並排序 Assist / Turnover Ratio
- 驗證計算欄位、型態轉換與資料合理性

---

## 作品集使用情境
- 軟體測試（QA）資料驗證
- 系統測試（API / DB 資料對帳）
- 初階資料查詢與資料品質檢查
- 面試展示 SQL 實務理解能力

---

## 關於作者
- 具備 SQL 查詢、API 測試（Postman）與基礎 Python 自動化概念
- 目標職務：軟體測試工程師（QA）
- 地區：高雄（可兼職／實習）
