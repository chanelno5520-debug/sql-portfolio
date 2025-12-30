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
- 常見於系統測試與資料匯入後檢查

### 07_calculate_bmi.sql
- 使用身高與體重計算 BMI
- 用於資料合理性檢查與異常值偵測前置分析

### 08_distinct_conf_div.sql
- 將 confName 與 divName 組合成單一分類欄位
- 使用 DISTINCT 去除重複結果
- 用於檢查聯盟與分區分類是否正確

---

### 09_calculate_bmi.sql
- 依據身高與體重欄位計算 BMI 並格式化結果
- 驗證衍生欄位計算公式是否正確
- 常見於資料合理性檢查與分析前置處理

### 10_calculate_assist_turnover_ratio.sql
- 計算 Assist / Turnover Ratio
- 驗證數值型欄位運算與型態轉換（CAST）
- 可用於檢查除以零、NULL 值等常見資料問題

### 11_distinct_year_month.sql
- 由日期欄位萃取不重複的年月（YYYY-MM）
- 用於檢查時間序列資料是否完整、是否缺月份
- 常見於趨勢分析與資料品質驗證

### 12_sum_presidential_votes.sql
- 彙總總統副總統選舉的總投票數
- 用於驗證資料匯入後的總量是否合理
- 常見於系統測試中的 KPI 對帳情境

### 13_sum_covid_totals.sql
- 彙總 COVID-19 的總確診、總痊癒、總死亡人數
- 用於高層級資料完整性與合理性檢查
- 常見於資料管線或報表輸出前驗證

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
