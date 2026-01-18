# SQL Portfolio – Hahow SQL Fifty

本作品集整理自 **Hahow《SQL 的五十道練習》**，  
以 **軟體測試（QA）實務視角**撰寫每一題 SQL，  
強調的不只是「查得出來」，而是 **資料是否正確、邏輯是否一致、結果是否可驗證**。

本作品集適合作為：
- 初階軟體測試工程師（QA）
- 具資料庫查詢需求之測試 / 系統 / 資料相關職務  
的 SQL 能力展示。

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
- DDL / DML（CREATE / INSERT / UPDATE / DELETE）
- INDEX / VIEW
- 資料完整性與關聯驗證（QA Data Validation）

---

## 題目列表與實務說明（01–50）

---

### 一、基礎查詢與資料預覽（01–05）

**01_preview_admin_regions.sql**  
- 預覽 admin_regions 資料表  
- 驗證資料是否成功載入、欄位是否正確  

**02_select_team_fields.sql**  
- 選取 teams 指定欄位  
- 練習基礎 SELECT 操作  

**03_select_players_with_alias.sql**  
- 使用 AS 設定欄位別名  
- 提升查詢結果可讀性  

**04_distinct_counties.sql**  
- 使用 DISTINCT 取得不重複 county  
- 檢查分類資料是否異常  

**05_distinct_divisions.sql**  
- 使用 DISTINCT 取得 division  
- 常見於資料清洗與分類驗證  

---

### 二、衍生欄位與計算（06–08）

**06_calculate_active.sql**  
- 計算 Active 病例數  
- 驗證欄位邏輯一致性  

**07_calculate_bmi.sql**  
- 使用身高與體重計算 BMI  
- 資料合理性檢查  

**08_distinct_conf_div.sql**  
- 合併 confName 與 divName  
- 驗證分類資料正確性  

---

### 三、數值計算與彙總（09–13）

**09_calculate_bmi.sql**  
- BMI 計算與格式化  
- 驗證公式正確性  

**10_calculate_assist_turnover_ratio.sql**  
- Assist / Turnover Ratio  
- 驗證 CAST 與除以零情況  

**11_distinct_year_month.sql**  
- 日期萃取年月  
- 驗證時間序列完整性  

**12_sum_presidential_votes.sql**  
- 總統選舉總票數  
- KPI 對帳  

**13_sum_covid_totals.sql**  
- COVID 總確診 / 痊癒 / 死亡  
- 高層資料完整性檢查  

---

### 四、排序與 Top-N（14–16）

**14_find_top_ten_ppg.sql**  
- PPG 前 10 名  
- 排序邏輯驗證  

**15_find_top_ten_daily_cases.sql**  
- 單日確診 Top 10  
- 極值檢查  

**16_find_top_ten_ast_to_ratio.sql**  
- Assist / Turnover Ratio 排名  
- 計算與排序驗證  

---

### 五、條件篩選（17–21）

**17_filter_taiwan_from_time_series.sql**  
- 篩選台灣資料  
- 國別資料驗證  

**18_filter_movies_released_in_1994.sql**  
- 1994 年上映電影  
- 年份欄位檢查  

**19_filter_three_male_actors_by_in.sql**  
- IN 條件篩選演員  
- 多值條件驗證  

**20_filter_movies_by_two_directors.sql**  
- 指定導演作品  
- 清單型資料對帳  

**21_match_country_name_pattern_land.sql**  
- LIKE 篩選國名  
- 資料探索  

---

### 六、分組與 HAVING（25–29）

**25_count_movies_by_year.sql**  
- 每年電影數統計  

**26_count_movies_by_year_having.sql**  
- 至少 5 部電影年份  
- HAVING 應用  

**27_sum_votes_by_candidate.sql**  
- 候選人總票數  
- KPI 對帳  

**28_count_players_by_country.sql**  
- 各國球員數  
- 分布檢查  

**29_count_players_by_country_having_between.sql**  
- 球員數介於 2–9  
- 中小樣本驗證  

---

### 七、子查詢（30–34）

**30_find_tallest_and_shortest_players_subquery.sql**  
- 最高 / 最矮球員  

**31_player_nationality_percentage_subquery.sql**  
- 各國球員佔比  

**32_find_scoring_leader_ppg_subquery.sql**  
- 場均得分王  

**33_brooklyn_nets_roster_subquery.sql**  
- Nets 球員名單  

**34_votes_percentage_by_candidate_subquery.sql**  
- 候選人得票率  

---

### 八、JOIN / Window / UNION（35–39）

**35_top_ten_countries_total_confirmed.sql**  
- 全球確診前 10  

**36_party_votes_percentage_union.sql**  
- 政黨得票率（UNION）  

**37_lakers_players_ppg_join.sql**  
- Lakers 球員 PPG  

**38_team_scoring_leader_window.sql**  
- 各隊得分王  

**39_hanks_and_dicaprio_filmography.sql**  
- 演員作品與主角標記  

---

### 九、資料完整性檢查（40–42）

**40_find_players_without_team.sql**  
- 無球隊球員（NULL）  

**41_find_teams_without_players.sql**  
- 無球員球隊（Anti-Join）  

**42_find_movies_without_cast.sql**  
- 無演員電影  

---

### 十、建表與資料操作（43–45）

**43_create_favorite_players_table.sql**  
- CREATE TABLE  

**44_insert_five_favorite_players.sql**  
- INSERT 測試資料  

**45_update_replace_player.sql**  
- UPDATE 精準更新  

---

### 十一、綜合實務（46–50）

**46_find_cruise_ships_from_covid19.sql**  
- 郵輪資料查詢（JOIN）  

**47_summarize_confirmed_deaths_by_country.sql**  
- 各國確診與死亡彙總  

**48_find_two_trilogy_casting_list.sql**  
- 三部曲演員名單（DISTINCT + JOIN）  

**49_find_max_stats_per_game.sql**  
- NBA 各項數據王（含並列）  

**50_summarize_presidential_votes_by_county.sql**  
- 各縣市總統得票 Pivot  

---

## 作品集使用情境
- 軟體測試（QA）資料驗證
- 系統測試（DB / API 對帳）
- 資料完整性與關聯檢查
- 面試展示 SQL 與 QA 思維

---

## 關於作者
- 具備 SQL 查詢、API 測試（Postman）、基礎 Python 自動化概念  
- 目標職務：**軟體測試工程師（QA）**  
- 地區：**高雄（可兼職／實習）**
