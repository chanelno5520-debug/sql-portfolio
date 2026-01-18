# SQL Portfolio – Hahow SQL Fifty

本作品集整理自 **Hahow《SQL 的五十道練習》**，  
以 **軟體測試（QA）實務視角** 撰寫每一題 SQL，  
重點不只在「查得出來」，而是在 **資料是否正確、邏輯是否合理、結果是否可驗證**。

適合作為：
- 初階軟體測試工程師（QA）
- 具 DB 查詢需求的測試 / 系統 / 資料相關職務  
的 SQL 能力作品集。

---

## 使用技術與重點能力
- SQL（SQLite）
- SELECT / WHERE / ORDER BY
- DISTINCT / LIKE / IN
- GROUP BY / COUNT / SUM
- HAVING / BETWEEN
- 子查詢（Subquery）
- JOIN / Anti-Join
- Window Functions（ROW_NUMBER）
- UNION ALL
- 日期處理（STRFTIME）
- DDL / DML（CREATE / INSERT / UPDATE）
- 資料完整性與關聯驗證（QA Data Validation）

---

## 題目列表與實務說明（01–45）

### 基礎查詢與資料預覽（01–05）

**01_preview_admin_regions.sql**  
- 預覽 admin_regions 資料表  
- 驗證資料是否成功載入、欄位是否正確  

**02_select_team_fields.sql**  
- 選取 teams 指定欄位  
- 練習基礎 SELECT 欄位操作  

**03_select_players_with_alias.sql**  
- 使用 AS 設定欄位別名  
- 提升查詢結果可讀性（報表 / 驗證常用）  

**04_distinct_counties.sql**  
- 使用 DISTINCT 取得不重複 county  
- 檢查分類資料是否異常  

**05_distinct_divisions.sql**  
- 使用 DISTINCT 取得 division 名稱  
- 常見於資料清洗與分類驗證  

---

### 衍生欄位與計算（06–08）

**06_calculate_active.sql**  
- 計算 Active 病例數  
- 驗證欄位間邏輯一致性  

**07_calculate_bmi.sql**  
- 使用身高與體重計算 BMI  
- 用於資料合理性檢查  

**08_distinct_conf_div.sql**  
- 合併 confName 與 divName  
- 驗證分類資料是否正確  

---

### 數值計算與彙總（09–13）

**09_calculate_bmi.sql**  
- BMI 計算與格式化  
- 驗證衍生欄位公式  

**10_calculate_assist_turnover_ratio.sql**  
- 計算 Assist / Turnover Ratio  
- 驗證 CAST 與除以零情況  

**11_distinct_year_month.sql**  
- 從日期萃取年月  
- 驗證時間序列完整性  

**12_sum_presidential_votes.sql**  
- 彙總總統選舉總票數  
- KPI 對帳常見情境  

**13_sum_covid_totals.sql**  
- 彙總 COVID 總確診 / 痊癒 / 死亡  
- 高層資料完整性檢查  

---

### 排序與 Top-N（14–16）

**14_find_top_ten_ppg.sql**  
- 找出 PPG 前 10 名球員  
- 驗證排序邏輯  

**15_find_top_ten_daily_cases.sql**  
- 單日確診數 Top 10  
- 極值檢查與趨勢分析  

**16_find_top_ten_ast_to_ratio.sql**  
- Assist/Turnover Ratio 排名  
- 驗證計算與排序  

---

### 條件篩選（17–21）

**17_filter_taiwan_from_time_series.sql**  
- 篩選台灣資料  
- 驗證國別資料完整性  

**18_filter_movies_released_in_1994.sql**  
- 篩選 1994 年上映電影  
- 驗證年份欄位  

**19_filter_three_male_actors_by_in.sql**  
- 使用 IN 篩選指定演員  
- 驗證多值條件  

**20_filter_movies_by_two_directors.sql**  
- 篩選指定導演作品  
- 清單型資料對帳  

**21_match_country_name_pattern_land.sql**  
- 使用 LIKE 篩選國名  
- 資料探索常用  

---

### 分組與 HAVING（25–29）

**25_count_movies_by_year.sql**  
- 每年電影數統計  
- GROUP BY 基本應用  

**26_count_movies_by_year_having.sql**  
- 篩選每年至少 5 部  
- HAVING 與 WHERE 差異  

**27_sum_votes_by_candidate.sql**  
- 各候選人總票數  
- KPI 對帳  

**28_count_players_by_country.sql**  
- 各國球員數  
- 分類分布檢查  

**29_count_players_by_country_having_between.sql**  
- 球員數介於 2–9 的國家  
- 中小樣本驗證  

---

### 子查詢（30–34）

**30_find_tallest_and_shortest_players_subquery.sql**  
- 找出最高 / 最矮球員  
- MAX / MIN 子查詢  

**31_player_nationality_percentage_subquery.sql**  
- 各國球員佔比  
- 比例計算驗證  

**32_find_scoring_leader_ppg_subquery.sql**  
- 場均得分王  
- 排名邏輯驗證  

**33_brooklyn_nets_roster_subquery.sql**  
- 查詢 Nets 球員名單  
- 關聯正確性檢查  

**34_votes_percentage_by_candidate_subquery.sql**  
- 各候選人得票率  
- 比例加總驗證  

---

### JOIN / Window / UNION（35–39）

**35_top_ten_countries_total_confirmed.sql**  
- 全球確診數前 10  
- JOIN + SUM  

**36_party_votes_percentage_union.sql**  
- 三大政黨得票率（兩種選舉）  
- UNION ALL  

**37_lakers_players_ppg_join.sql**  
- Lakers 球員 PPG  
- 多表 JOIN  

**38_team_scoring_leader_window.sql**  
- 各隊得分王  
- Window Function  

**39_hanks_and_dicaprio_filmography.sql**  
- 演員作品與主角標記  
- 多表關聯驗證  

---

### 資料完整性檢查（40–42）

**40_find_players_without_team.sql**  
- 沒有球隊的球員  
- NULL 檢查  

**41_find_teams_without_players.sql**  
- 沒有球員的球隊  
- Anti-Join  

**42_find_movies_without_cast.sql**  
- 沒有演員的電影  
- 關聯完整性驗證  

---

### 建表與資料操作（43–45）

**43_create_favorite_players_table.sql**  
- CREATE TABLE  
- 驗證 DDL  

**44_insert_five_favorite_players.sql**  
- INSERT 資料  
- 驗證資料寫入  

**45_update_replace_player.sql**  
- UPDATE 更新資料  
- 驗證精準更新  

---

## 作品集使用情境
- 軟體測試（QA）資料驗證
- 系統測試（DB / API 對帳）
- 資料完整性與關聯檢查
- 面試展示 SQL + QA 思維

---

## 關於作者
- 具備 SQL 查詢、API 測試（Postman）、基礎 Python 自動化概念  
- 目標職務：**軟體測試工程師（QA）**  
- 地區：**高雄（可兼職／實習）**
