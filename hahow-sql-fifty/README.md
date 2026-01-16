# SQL Portfolio – Hahow SQL Fifty

本作品集整理自 Hahow「SQL 的五十道練習」，  
重點放在 **SQL 基礎查詢、資料驗證與實務 QA 常見使用情境**，  
適合作為初階軟體測試（QA）與資料查詢能力的展示。

---

## 使用技術
- SQL（SQLite）
- SELECT / WHERE / NULL 檢查
- DISTINCT / LIKE / IN
- GROUP BY / COUNT / SUM
- HAVING / BETWEEN
- ORDER BY
- 日期處理（STRFTIME）
- 子查詢（Subquery）
- JOIN / Anti-Join
- Window Functions（ROW_NUMBER）
- UNION ALL
- 資料完整性與關聯驗證（Data Validation）

---

## 題目與實務說明（01–39）
> 01–39 題已完整整理於 repo，涵蓋：
> - 基礎查詢
> - 分組聚合
> - HAVING / BETWEEN
> - 子查詢
> - JOIN / Window / UNION
> - 排名、比例、KPI 對帳

---

## 資料完整性與關聯驗證（40–42）

### 40_find_players_without_team.sql
- 找出沒有隸屬球隊的球員（NULL 檢查）
- 常見於 roster 或資料匯入後的 QA 驗證

### 41_find_teams_without_players.sql
- 找出沒有任何球員的球隊（LEFT JOIN + NULL）
- 常見於主從表關聯完整性檢查

### 42_find_movies_without_cast.sql
- 找出沒有演員資料的電影（anti-join）
- 常見於 ETL / 關聯資料品質驗證

---

## 作品集使用情境
- 軟體測試（QA）資料驗證
- 系統測試（API / DB 資料對帳）
- 資料完整性與關聯檢查
- 面試展示 SQL 實務與 QA 思維能力

---

## 關於作者
- 具備 SQL 查詢、API 測試（Postman）與基礎 Python 自動化概念
- 目標職務：軟體測試工程師（QA）
- 地區：高雄（可兼職／實習）
