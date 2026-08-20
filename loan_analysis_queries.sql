-- ============================================================
-- Loan Approval Turnaround Optimization — A/B Test SQL Queries
-- Dataset: bigquery-practice-486109.Loan_Approval_Turn_Around.loan_test
-- ============================================================

-- 1. Overall Summary — Pilot vs BAU
-- Compares total applications, avg turnaround time, drop-off rate,
-- and error rate between the two groups
SELECT
  `Group`,
  COUNT(*) AS total_applications,
  ROUND(AVG(Turnaround_Time), 2) AS avg_turnaround_days,
  ROUND(SUM(CASE WHEN Status = 'Dropped-off' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS drop_off_rate_pct,
  ROUND(AVG(Error_Flag) * 100, 2) AS error_rate_pct
FROM `bigquery-practice-486109.Loan_Approval_Turn_Around.loan_test`
GROUP BY `Group`;


-- 2. Insight by Loan Type — does the Pilot help equally across all loan types?
SELECT
  Loan_Type,
  `Group`,
  COUNT(*) AS total_applications,
  ROUND(AVG(Turnaround_Time), 2) AS avg_turnaround_days,
  ROUND(SUM(CASE WHEN Status = 'Dropped-off' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS drop_off_rate_pct
FROM `bigquery-practice-486109.Loan_Approval_Turn_Around.loan_test`
GROUP BY Loan_Type, `Group`
ORDER BY Loan_Type, `Group`;


-- 3. Insight by Document Type — which document combo takes longest?
SELECT
  Document_Type,
  `Group`,
  ROUND(AVG(Turnaround_Time), 2) AS avg_turnaround_days,
  COUNT(*) AS total_applications
FROM `bigquery-practice-486109.Loan_Approval_Turn_Around.loan_test`
GROUP BY Document_Type, `Group`
ORDER BY avg_turnaround_days DESC;
