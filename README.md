# Loan-Approval-Turnaround-Optimization-A-B-Testing
A/B test analysis of loan approval workflows using SQL, Python &amp; BigQuery — multiple applications, statistically significant turnaround time reduction (p&lt;0.001)

# 📝Background:
As part of process improvement efforts at a retail
banking division, the core objective was to reduce
loan approval turnaround time without compromising
approval quality. This project focused on evaluating a
modified approval workflow (Pilot) against the
existing standard process (BAU — Business As Usual),
measuring impact through turnaround time, approval
rate, and customer satisfaction proxies

# 🎯Objective:

To determine whether the Pilot process delivers a
statistically significant reduction in loan approval
turnaround time compared to the BAU process, and to
quantify the improvement

# 📊Data Description:\

The analysis is based on loan application records,
with each entry representing one loan case assigned
to either the Pilot or BAU group. Fields include:
🆔Application ID:
 Unique identifier for each loan
case

 Group:
 Pilot or BAU assignment
⏱Turnaround Time:
 Time taken from application
to approval decision (in hours/days)
✅Approval Status:
 Approved / Rejected
💰Loan Amount:
 Requested loan amount
📅Application Date:
 Date of submission
The dataset consists of 50,000 entries across both
groups.


# 🔍Methodology:
1. Data Preparation
Structured records into Pilot and BAU groups
Handled missing or inconsistent entries to ensure
accuracy
2. Exploratory Data Analysis (EDA)
Visualized turnaround time distribution across
both groups
Identified patterns in approval rates by group and
loan segment
3. Statistical Analysis
Performed hypothesis testing (t-test) to compare
turnaround time between Pilot and BAU
Validated statistical significance across three key
metrics (p < 0.001)
Conducted group-level comparison of approval
rates
4. Results Validation
Cross-checked effect size against practical
business impact
Confirmed consistency of results across loan
segments

# 📈Key Insights:

Turnaround Time:
 The Pilot process reduced
average turnaround time by approximately 40%
compared to BAU, a statistically significant result
(p < 0.001).
Statistical Confidence:
 All three tested metrics
showed significance well below the 0.001
threshold, indicating the improvement is highly
unlikely to be due to chance.
Business Impact:
 Findings support scaling the
Pilot process to reduce operational bottlenecks in
loan approval workflows.

# 💻Technologies Used:

SQL (BigQuery):
 Data querying, aggregation, and
group comparison
Python:
 Statistical hypothesis testing and
analysis
SciPy:
 t-test and significance testing
