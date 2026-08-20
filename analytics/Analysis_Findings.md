# CarePulse AI – Analytics Findings

## 1. Objective

This analysis uses synthetic patient, vital-sign, and clinical alert data to identify operational patterns and translate them into product insights.

The analysis focuses on:

- Patient risk distribution
- Vital-sign patterns
- Alert volume and severity
- Clinical response time
- Alert escalation
- Clinician workload
- Product improvement opportunities

> **Note:** All data used in this analysis is synthetic and created for portfolio demonstration purposes. It does not represent real patients or clinical outcomes.

---

# 2. Patient Risk Distribution

The patient dataset contains 30 monitored patients.

Risk categories include:

- Low
- Medium
- High

### Product Question

What proportion of monitored patients are currently classified as high risk?

### Analysis Approach

```sql
SELECT
    risk_level,
    COUNT(*) AS patient_count
FROM patients
GROUP BY risk_level
ORDER BY patient_count DESC;
