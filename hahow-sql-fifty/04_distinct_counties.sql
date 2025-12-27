-- Problem: 取得 admin_regions 中不重複的 county 清單
-- Scenario (QA): 常用於檢查資料的類別是否落在合理集合、或做下拉選單/報表分類核對

SELECT DISTINCT county AS distinct_counties
  FROM admin_regions;
