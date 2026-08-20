# Loan-Approval-Turnaround-Optimization-A-B-Testing
A/B test analysis of loan approval workflows using SQL, Python &amp; BigQuery — multiple applications, statistically significant turnaround time reduction (p&lt;0.001)

# Overview

This project analyzes the impact of an automated document verification pilot on loan approval turnaround time, using a randomized A/B test framework. It simulates a mid-sized Australian bank comparing a Pilot process (automated verification) against the existing BAU process (manual review) across 50,000 loan applications.

# Business Problem

Manual loan document review creates long turnaround times, higher applicant drop-off, and processing errors — all of which hurt customer experience and operational efficiency. This project tests whether automating document verification meaningfully improves these outcomes, and whether the improvement is statistically significant or just noise.

# Tech Stack

Data Warehouse: Google BigQuery
Analysis: SQL (BigQuery), Python (Pandas, SciPy)
Statistical Testing: Independent t-test, Chi-square test
Methodology
50,000 loan applications randomly split into Pilot and BAU groups
Three outcome metrics tested:
Turnaround Time (days) — independent t-test
Drop-off Rate (%) — chi-square test
Error Rate (%) — chi-square test
Segment-level breakdowns by Loan Type and Document Type to check consistency of the effect
