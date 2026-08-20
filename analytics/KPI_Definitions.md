# CarePulse AI – KPI Definitions

## 1. Purpose

This document defines the key product, clinical workflow, and operational KPIs used to evaluate CarePulse AI.

The KPIs connect product activity with measurable business and operational outcomes.

---

## 2. North Star Metric

### Timely Clinical Review Rate

**Definition:**

Percentage of high-risk alerts that receive clinical acknowledgement within the defined target response time.

**Formula:**

Timely Clinical Review Rate =
High-risk alerts reviewed within target time
÷
Total high-risk alerts
× 100

**Why it matters:**

This measures whether the platform is helping clinical teams identify and respond to important patient alerts in a timely manner.

---

# 3. Patient Monitoring KPIs

## 3.1 Active Monitored Patients

**Definition:**

Number of patients currently enrolled and actively monitored.

**Formula:**

Count of patients where monitoring_status = 'Active'

**Business Question:**

How many patients are currently being monitored?

---

## 3.2 High-Risk Patient Percentage

**Definition:**

Percentage of monitored patients classified as high risk.

**Formula:**

High-risk patients
÷
Total monitored patients
× 100

**Business Question:**

What proportion of the monitored population requires increased attention?

---

## 3.3 Monitoring Coverage

**Definition:**

Percentage of eligible patients actively enrolled in monitoring.

**Formula:**

Active monitored patients
÷
Eligible patients
× 100

**Business Question:**

How effectively is the monitoring program reaching eligible patients?

---

# 4. Alert KPIs

## 4.1 Total Alert Volume

**Definition:**

Total number of alerts generated during a defined period.

**Business Question:**

How much alert activity is the clinical team handling?

---

## 4.2 Open Alert Count

**Definition:**

Number of alerts that have not yet been resolved.

**Business Question:**

How much unresolved alert workload currently exists?

---

## 4.3 Alert Resolution Rate

**Definition:**

Percentage of generated alerts that have been resolved.

**Formula:**

Resolved alerts
÷
Total alerts
× 100

**Business Question:**

How effectively are clinical teams closing alert workflows?

---

## 4.4 Alert Escalation Rate

**Definition:**

Percentage of alerts that require escalation.

**Formula:**

Escalated alerts
÷
Total alerts
× 100

**Business Question:**

How frequently do alerts require additional clinical attention?

---

# 5. Clinical Response KPIs

## 5.1 Average Alert Response Time

**Definition:**

Average time between alert creation and acknowledgement.

**Formula:**

Average(alert_acknowledged_at - alert_created_at)

**Business Question:**

How quickly are clinicians responding to alerts?

---

## 5.2 Median Alert Response Time

**Definition:**

The median time between alert creation and acknowledgement.

**Why it matters:**

Median response time reduces the influence of unusually long response times and can provide a more representative view of typical workflow performance.

---

## 5.3 Critical Alert Response Time

**Definition:**

Average acknowledgement time for critical alerts.

**Business Question:**

Are the most important alerts receiving timely attention?

---

# 6. Clinician Workload KPIs

## 6.1 Alerts per Clinician

**Definition:**

Average number of alerts assigned to each clinician.

**Formula:**

Total assigned alerts
÷
Number of clinicians

**Business Question:**

How is alert workload distributed across the clinical team?

---

## 6.2 Alerts by Clinician

**Definition:**

Number of alerts assigned to each clinician.

**Business Question:**

Are some clinicians receiving significantly higher workloads?

---

# 7. Patient Risk KPIs

## 7.1 Risk Distribution

**Definition:**

Distribution of patients across Low, Medium, and High risk categories.

**Business Question:**

What does the current patient risk profile look like?

---

## 7.2 Average Risk Score

**Definition:**

Average risk score across monitored patients.

**Business Question:**

Is the overall monitored population becoming higher or lower risk over time?

---

# 8. Product Adoption KPIs

## 8.1 Clinician Adoption Rate

**Definition:**

Percentage of eligible clinicians actively using the platform.

**Formula:**

Active clinicians
÷
Eligible clinicians
× 100

---

## 8.2 Dashboard Engagement

**Definition:**

Frequency with which clinical users access the monitoring dashboard.

**Possible measurement:**

- Daily active users
- Weekly active users
- Sessions per clinician
- Average session duration

---

# 9. Operational Efficiency KPIs

## 9.1 Manual Monitoring Time Saved

**Definition:**

Estimated reduction in time spent manually reviewing and compiling patient monitoring information.

**Business Question:**

Is the platform reducing operational workload?

---

## 9.2 Reporting Effort Reduction

**Definition:**

Percentage reduction in time required to produce operational reports.

**Business Question:**

Is automated analytics reducing manual reporting effort?

---

# 10. KPI Targets

Initial targets are illustrative and should be validated using baseline performance data.

| KPI | Initial Target |
|---|---:|
| Timely Clinical Review Rate | ≥ 90% |
| Alert Resolution Rate | ≥ 90% |
| Critical Alert Review | ≥ 95% within target time |
| Average Alert Response Time | < 15 minutes |
| Alert Escalation Rate | < 10% |
| Clinician Adoption | ≥ 80% |
| Monitoring Coverage | ≥ 85% |
| Manual Monitoring Effort | ≥ 30% reduction |

---

# 11. KPI Hierarchy

The KPI hierarchy connects the overall product outcome to operational drivers.

```text
                 Product Outcome
                       │
                       ▼
       Timely Clinical Review Rate
                       │
          ┌────────────┼────────────┐
          ▼            ▼            ▼
     Alert Volume  Response Time  Resolution
          │            │            │
          ▼            ▼            ▼
     Risk Level     Workload     Escalation
          │            │            │
          └────────────┼────────────┘
                       ▼
              Patient Monitoring
