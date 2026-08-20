# CarePulse AI – Product Metrics & Analytics

## 1. Purpose

This document defines the key product, clinical operations, workflow, and business metrics for CarePulse AI.

The metrics are designed to measure whether the platform is:

* Helping clinical teams identify at-risk patients
* Improving alert management
* Reducing unnecessary manual monitoring
* Supporting faster clinical review
* Improving operational visibility
* Delivering reliable AI-assisted insights

The portfolio uses synthetic data for demonstration purposes.

---

# 2. North Star Metric

## Clinically Actioned High-Risk Patients

**Definition:**

Percentage of high-risk patients identified by the platform whose alerts are reviewed and appropriately actioned by the clinical team within the defined response window.

### Formula

```text
Clinically Actioned High-Risk Patients
-------------------------------------- × 100
Total High-Risk Patients Identified
```

### Why this metric?

CarePulse AI is not simply designed to generate more alerts.

The product's value comes from helping clinical teams:

**Identify → Prioritize → Review → Act → Resolve**

Therefore, the North Star Metric focuses on meaningful clinical workflow action rather than raw alert volume.

---

# 3. KPI Framework

| KPI Category        | Metric                      | Purpose                         |
| ------------------- | --------------------------- | ------------------------------- |
| Patient Monitoring  | Active Monitored Patients   | Measures platform adoption      |
| Risk Detection      | High-Risk Detection Rate    | Measures risk identification    |
| Alert Management    | Alert Resolution Rate       | Measures workflow completion    |
| Clinical Operations | Median Alert Response Time  | Measures responsiveness         |
| Alert Quality       | Alert Escalation Rate       | Measures severity/workflow      |
| Data Quality        | Vital Data Completeness     | Measures monitoring reliability |
| Product Usage       | Daily Active Clinical Users | Measures engagement             |
| AI                  | AI Insight Acceptance Rate  | Measures usefulness             |
| Business            | Organization Adoption       | Measures customer expansion     |

---

# 4. Patient Monitoring Metrics

## 4.1 Active Monitored Patients

**Definition:** Number of patients actively receiving monitoring data during a defined period.

### Formula

```text
Patients with ≥1 valid monitoring observation
during the measurement period
```

### Example

```text
Active Monitored Patients = 100
```

---

## 4.2 Monitoring Coverage

**Definition:** Percentage of enrolled patients who have received valid monitoring data within the expected monitoring period.

### Formula

```text
Patients with valid monitoring data
------------------------------------ × 100
Total enrolled patients
```

### Target

**≥95%**

---

# 5. Risk Detection Metrics

## 5.1 High-Risk Patient Rate

**Definition:** Percentage of monitored patients currently classified as high or critical risk.

### Formula

```text
High/Critical Risk Patients
--------------------------- × 100
Total Monitored Patients
```

### Example

```text
18 / 100 × 100 = 18%
```

---

## 5.2 Risk Classification Distribution

Track the distribution of patients across:

* Low Risk
* Medium Risk
* High Risk
* Critical Risk

Example:

| Risk Level | Patients | Percentage |
| ---------- | -------: | ---------: |
| Low        |       40 |        40% |
| Medium     |       42 |        42% |
| High       |       15 |        15% |
| Critical   |        3 |         3% |
| **Total**  |  **100** |   **100%** |

---

# 6. Alert Metrics

## 6.1 Open Alerts

**Definition:** Number of alerts currently requiring clinical action.

Example:

```text
Open Alerts = 12
```

---

## 6.2 Alert Resolution Rate

**Definition:** Percentage of generated alerts that have been resolved during the measurement period.

### Formula

```text
Resolved Alerts
--------------- × 100
Total Alerts
```

### Example

```text
87 resolved / 100 total alerts = 87%
```

### Target

**≥90%**

---

## 6.3 Alert Response Time

**Definition:** Time between alert generation and the first meaningful clinical acknowledgement.

### Recommended measurement

Use:

**Median Alert Response Time**

rather than only average response time because extreme outliers can distort the average.

### Target

```text
High/Critical Alerts: <15 minutes
Medium Alerts: <60 minutes
```

Targets are illustrative and would require validation against the organization's clinical workflows.

---

## 6.4 Alert Escalation Rate

**Definition:** Percentage of alerts requiring escalation after initial review.

### Formula

```text
Escalated Alerts
---------------- × 100
Total Alerts
```

A high escalation rate may indicate:

* Incorrect alert prioritization
* Insufficient clinical information
* Complex patient cases
* Workflow gaps

The metric should therefore be analyzed rather than automatically treated as negative.

---

# 7. Alert Quality Metrics

## 7.1 Clinically Relevant Alert Rate

**Definition:** Percentage of alerts determined to require meaningful clinical review or action.

### Formula

```text
Clinically Relevant Alerts
-------------------------- × 100
Total Generated Alerts
```

### Product Goal

Increase meaningful alerts while reducing unnecessary alert noise.

---

## 7.2 Alert Noise Rate

**Definition:** Percentage of generated alerts that do not result in meaningful clinical action.

### Formula

```text
Non-actionable Alerts
--------------------- × 100
Total Alerts
```

### Product Objective

Reduce alert fatigue without reducing detection of clinically important events.

---

# 8. Patient Engagement Metrics

For future patient-facing capabilities, track:

### Patient Monitoring Adherence

Percentage of expected measurements successfully received.

### Measurement Completion Rate

```text
Completed Expected Measurements
-------------------------------- × 100
Expected Measurements
```

### Data Freshness

Median time since the patient's latest valid observation.

---

# 9. Clinical Operations Metrics

## 9.1 Time to Clinical Review

Measures the time between an alert being generated and the alert being reviewed by an appropriate clinical user.

### Goal

Reduce time to review for high-severity alerts.

---

## 9.2 Time to Resolution

Measures the time between alert creation and resolution.

```text
Resolution Timestamp
-
Alert Creation Timestamp
```

Track separately by:

* Severity
* Clinical team
* Organization
* Alert type

---

## 9.3 Escalation Completion Rate

Percentage of escalated alerts that receive a documented outcome.

### Target

**≥95%**

---

# 10. Product Adoption Metrics

## 10.1 Daily Active Clinical Users

Number of unique clinical users who actively use the platform during a day.

Examples of meaningful actions:

* Reviewing patients
* Opening alerts
* Acknowledging alerts
* Viewing risk information
* Reviewing analytics

---

## 10.2 Weekly Active Clinical Users

Number of unique clinical users performing meaningful product actions within a week.

---

## 10.3 Feature Adoption

Measure adoption of key capabilities:

| Feature           | Adoption Metric               |
| ----------------- | ----------------------------- |
| Patient Dashboard | % active users                |
| Risk Monitoring   | % users reviewing risk        |
| Alerts            | % users processing alerts     |
| Analytics         | % users viewing reports       |
| AI Insights       | % users accessing AI insights |

---

# 11. AI Product Metrics

AI features require additional monitoring because usefulness, safety, and trust are critical.

## 11.1 AI Insight Acceptance Rate

**Definition:** Percentage of AI-generated insights that clinicians accept or use in their workflow.

### Formula

```text
Accepted AI Insights
-------------------- × 100
AI Insights Viewed
```

---

## 11.2 AI Insight Override Rate

**Definition:** Percentage of AI suggestions that clinicians disagree with or override.

### Formula

```text
Overridden AI Insights
---------------------- × 100
AI Insights Reviewed
```

A high override rate should trigger investigation into:

* Data quality
* Model performance
* Explanation quality
* Workflow context
* User expectations

---

## 11.3 AI Explanation Usage

Percentage of users who open the explanation or supporting evidence behind an AI-generated insight.

This helps measure whether clinicians want transparency before acting.

---

## 11.4 AI Safety Metrics

Monitor:

* Unsupported recommendations
* Missing context
* Incorrect patient association
* Hallucinated information
* Clinician-reported AI errors
* AI-related incidents

AI should remain assistive and subject to appropriate clinical review.

---

# 12. Data Quality Metrics

Reliable healthcare monitoring depends on reliable data.

## 12.1 Data Completeness

```text
Valid Required Fields
--------------------- × 100
Expected Required Fields
```

### Target

**≥98%**

---

## 12.2 Data Freshness

Measures how recently valid patient observations have been received.

---

## 12.3 Invalid Data Rate

```text
Invalid Observations
-------------------- × 100
Total Observations
```

Track by:

* Device
* Integration
* Organization
* Data type

---

# 13. Business Metrics

## 13.1 Organization Adoption

Number of healthcare organizations actively using CarePulse AI.

---

## 13.2 Patient Capacity

Number of actively monitored patients per organization.

---

## 13.3 Clinical Productivity

Potential measure:

```text
Patients Monitored
------------------
Clinical User
```

This should be interpreted carefully and should not be used as a standalone measure of clinical performance.

---

## 13.4 Operational Efficiency

Potential measure:

```text
Manual Monitoring Time
        vs.
Monitoring Time After Platform Adoption
```

### Example Goal

Reduce repetitive manual monitoring activities by **20–30%** while maintaining or improving clinical safety.

---

# 14. Metrics Tree

```text
                         CAREPULSE AI
                              │
                    ┌─────────┴─────────┐
                    │                   │
              Patient Outcomes     Operational Value
                    │                   │
             ┌──────┴──────┐      ┌─────┴─────┐
             │             │      │           │
        Risk Detection  Monitoring Alerts   Efficiency
             │             │      │           │
             │             │      │           │
        High-Risk Rate  Coverage  Response   Resolution
        Detection       Data       Time       Rate
        Quality         Freshness  Escalation Manual Effort
```

---

# 15. Dashboard Metrics

The CarePulse AI operational dashboard should prioritize metrics that support immediate decision-making.

### Primary KPIs

```text
Total Monitored Patients
High-Risk Patients
Open Alerts
Alert Resolution Rate
```

### Secondary Metrics

```text
Alert Response Time
Risk Distribution
Alert Escalation Rate
Data Completeness
Clinical User Activity
```

### AI Metrics

```text
AI Insight Acceptance
AI Override Rate
AI Error Reports
```

---

# 16. Example Executive Dashboard

| Metric             | Current |  Target | Status            |
| ------------------ | ------: | ------: | ----------------- |
| Monitored Patients |     100 |    100+ | On Track          |
| High-Risk Patients |      18 | Monitor | Review            |
| Open Alerts        |      12 |     <15 | On Track          |
| Resolution Rate    |     87% |    ≥90% | Needs Improvement |
| Data Completeness  |     98% |    ≥98% | On Track          |
| High-Risk Response |  12 min | <15 min | On Track          |

---

# 17. Product Experimentation

Metrics should also support product experimentation.

## Experiment 1 — Alert Prioritization

**Hypothesis:**

Prioritizing alerts by clinical severity will reduce clinician response time.

**Primary Metric:**

Median alert response time.

**Secondary Metrics:**

* Resolution rate
* Escalation rate
* Alert fatigue indicators

---

## Experiment 2 — AI Patient Summary

**Hypothesis:**

AI-generated patient summaries will reduce time required to understand a patient's recent monitoring history.

**Primary Metric:**

Time to clinical review.

**Secondary Metrics:**

* Summary usage
* AI acceptance rate
* Clinician satisfaction
* Override rate

---

## Experiment 3 — Alert Grouping

**Hypothesis:**

Grouping related alerts for the same patient will reduce alert fatigue.

**Primary Metric:**

Alerts reviewed per clinical session.

**Secondary Metrics:**

* Resolution rate
* Response time
* User satisfaction

---

# 18. Metric Governance

Every production metric should have:

* Clear definition
* Data source
* Calculation logic
* Owner
* Reporting frequency
* Target
* Known limitations

Example:

| Metric                 | Owner               | Frequency | Source              |
| ---------------------- | ------------------- | --------- | ------------------- |
| Alert Resolution Rate  | Clinical Operations | Daily     | Alert Database      |
| Risk Distribution      | Product             | Daily     | Risk Engine         |
| Data Completeness      | Data/Engineering    | Daily     | Data Pipeline       |
| AI Acceptance Rate     | Product/AI          | Weekly    | AI Interaction Logs |
| Clinical User Activity | Product             | Weekly    | Product Analytics   |

---

# 19. Success Criteria

CarePulse AI MVP success would be evaluated across four dimensions:

### Clinical Workflow

* Faster identification of high-risk patients
* Faster alert review
* High alert resolution rate
* Appropriate escalation

### Product Adoption

* Consistent clinical user activity
* Regular dashboard usage
* Adoption of risk monitoring and alerts

### Data Reliability

* High data completeness
* High monitoring coverage
* Low invalid-data rate

### AI Readiness

* Useful AI-assisted insights
* High clinician trust
* Low inappropriate recommendation rate
* Transparent explanations

---

# 20. Key Product Principle

> The objective is not to generate more alerts.

The objective is to help clinical teams **identify the right patients, prioritize the right alerts, and take the right action at the right time.**

CarePulse AI • Product Metrics & Analytics • Portfolio MVP
