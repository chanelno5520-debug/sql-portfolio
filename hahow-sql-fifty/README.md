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
- 依據身高與體重欄位計算 BMI 並格式化結果
- 驗證衍生欄位計算公式是否正確

### 10_calculate_assist_turnover_ratio.sql
- 計算 Assist / Turnover Ratio
- 驗證型態轉換（CAST）與除以零等常見資料問題

### 11_distinct_year_month.sql
- 由日期欄位萃取不重複的年月（YYYY-MM）
- 用於檢查時間序列資料是否完整、是否缺月份

### 12_sum_presidential_votes.sql
- 彙總總統副總統選舉的總投票數
- 常見於系統測試中的 KPI 對帳情境

### 13_sum_covid_totals.sql
- 彙總 COVID-19 的總確診、總痊癒、總死亡人數
- 用於高層級資料完整性與合理性檢查

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

### 17_filter_taiwan_from_time_series.sql
- 從 time_series 篩選出 Taiwan 的觀測值
- 常用於資料載入後的國別資料驗證

### 18_filter_movies_released_in_1994.sql
- 從 movies 篩選上映年份為 1994 的電影
- 驗證年份欄位篩選與資料完整性

### 19_filter_three_male_actors_by_in.sql
- 從 actors 篩選指定三位演員（IN）
- 驗證多值條件比對與命名一致性

### 20_filter_movies_by_two_directors.sql
- 篩選兩位導演作品並排序（IN + ORDER BY）
- 常用於清單型報表與資料對帳

### 21_match_country_name_pattern_land.sql
- 從 lookup_table 篩選名稱包含 'land' 的國家（LIKE）
- 常用於資料探索與分類值驗證

---

## 分組聚合與 HAVING（25–29）

### 25_count_movies_by_year.sql
- 依 release_year 統計每年的電影數（GROUP BY + COUNT）
- 常見於報表分年統計與資料完整性檢查

### 26_count_movies_by_year_having.sql
- 篩出每年至少 5 部電影的年份（HAVING）
- 示範聚合後篩選口徑（避免 WHERE/HAVING 用錯）

### 27_sum_votes_by_candidate.sql
- 依候選人彙總總得票數（SUM + GROUP BY）
- 常用於 KPI 對帳與資料驗證

### 28_count_players_by_country.sql
- 依 country 統計球員數並排序
- 常用於分類分布檢查與資料探索

### 29_count_players_by_country_having_between.sql
- 篩出球員數介於 2~9 的國家（HAVING + BETWEEN）
- 常用於中小樣本分類的檢查與抽樣

---

## 子查詢 Subquery（30–34）

### 30_find_tallest_and_shortest_players_subquery.sql
- 用 MAX/MIN 子查詢找出身高最高與最矮球員（含並列）
- 常用於極值驗證與資料探索

### 31_player_nationality_percentage_subquery.sql
- 計算各國籍球員佔比（各國 COUNT / 全體 COUNT）
- 常用於分類分布與資料合理性檢查

### 32_find_scoring_leader_ppg_subquery.sql
- 找出 ppg 最高的場均得分王（MAX + 子查詢）
- 常用於排名/冠軍類指標驗證

### 33_brooklyn_nets_roster_subquery.sql
- 用 teams 子查詢定位 Brooklyn Nets 的 teamId，再查 roster
- 常用於關聯資料查詢與名單對帳

### 34_votes_percentage_by_candidate_subquery.sql
- 計算各候選人得票率（各候選人 SUM / 全體 SUM）
- 常用於 KPI 比例、報表呈現與資料對帳

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
