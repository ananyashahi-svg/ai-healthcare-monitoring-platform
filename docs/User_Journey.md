# CarePulse AI – User Journey

## 1. Journey Overview

The CarePulse AI user journey describes how patient monitoring data moves through the platform and supports clinical teams from data collection to intervention and outcome tracking.

## 2. End-to-End Journey

Patient
↓
Patient Monitoring
↓
Data Collection
↓
Data Validation
↓
Risk Analysis
↓
Risk Score
↓
Alert Generation
↓
Alert Prioritization
↓
Clinician Review
↓
Clinical Intervention
↓
Outcome Recording
↓
Analytics

## 3. Detailed User Journey

### Stage 1 – Patient Enrollment

**User:** Care Manager

The care manager enrolls a patient into the monitoring program.

**Actions:**
- Create patient profile
- Capture required patient information
- Configure monitoring parameters
- Activate patient monitoring

**Expected Outcome:**
Patient becomes active in the monitoring program.

---

### Stage 2 – Patient Monitoring

**User:** Patient

The patient uses an approved monitoring device or provides health observations.

**Example data:**
- Blood pressure
- Heart rate
- SpO2
- Temperature

**Expected Outcome:**
Patient monitoring data becomes available to the platform.

---

### Stage 3 – Data Collection

**System:**

CarePulse AI receives patient observations from connected data sources.

**System actions:**
- Receive data
- Validate data format
- Check data completeness
- Store monitoring data

**Expected Outcome:**
Valid patient data is available for analysis.

---

### Stage 4 – Risk Analysis

**System:**

The platform evaluates the latest patient observations and historical trends.

**System considers:**
- Current measurements
- Historical trends
- Configured thresholds
- Patient risk factors
- Data quality

**Expected Outcome:**
The system calculates a risk score.

---

### Stage 5 – Risk Classification

The patient is categorized into a risk level:

| Risk Level | Description |
|---|---|
| Low | No significant risk detected |
| Medium | Monitoring or follow-up may be required |
| High | Clinical review should be prioritized |

The risk classification is intended to support clinical decision-making and does not replace clinical judgment.

---

### Stage 6 – Alert Generation

If configured conditions are met, the platform generates an alert.

An alert contains:

- Patient ID
- Alert type
- Severity
- Triggering measurement
- Timestamp
- Risk level
- Alert status

---

### Stage 7 – Alert Prioritization

The platform prioritizes alerts based on factors such as:

- Alert severity
- Patient risk level
- Measurement deviation
- Alert age
- Escalation status

This helps clinicians focus on the most important alerts first.

---

### Stage 8 – Clinician Review

**User:** Clinician

The clinician reviews the alert and relevant patient information.

The clinician can:

- View patient profile
- Review recent measurements
- Review historical trends
- Review risk factors
- Acknowledge the alert
- Assign the alert
- Escalate the alert
- Resolve the alert

---

### Stage 9 – Clinical Intervention

**User:** Clinician / Care Manager

Based on professional clinical judgment, the healthcare team may determine the appropriate next action.

Possible actions may include:

- Contacting the patient
- Scheduling follow-up
- Providing appropriate care instructions
- Escalating to another clinical team
- Continuing monitoring

CarePulse AI supports the workflow but does not independently make clinical decisions.

---

### Stage 10 – Outcome Recording

The user records the outcome of the intervention.

Example:

- Intervention completed
- Patient contacted
- Follow-up scheduled
- Alert resolved
- Further monitoring required

---

### Stage 11 – Analytics

The platform uses workflow data to generate operational insights.

Example metrics:

- Average alert response time
- Alert resolution rate
- Escalation rate
- High-risk patient percentage
- Number of active patients
- Monitoring coverage
- Clinician workload

---

## 4. User Journey Table

| Stage | User | User Need | System Response | Outcome |
|---|---|---|---|---|
| Enrollment | Care Manager | Add patient | Creates patient profile | Patient enrolled |
| Monitoring | Patient | Record health data | Receives observations | Data available |
| Data Processing | System | Validate data | Checks data quality | Valid data stored |
| Risk Analysis | System | Identify risk | Calculates risk score | Risk identified |
| Alert | System | Highlight concern | Creates alert | Alert generated |
| Prioritization | System | Focus attention | Ranks alerts | Priority established |
| Review | Clinician | Understand patient status | Displays patient context | Clinical review |
| Intervention | Clinician | Take appropriate action | Records workflow | Intervention completed |
| Outcome | Care Team | Track result | Updates status | Outcome recorded |
| Analytics | Administrator | Monitor performance | Generates KPIs | Operational insight |

## 5. Key User Pain Points

Potential pain points addressed by CarePulse AI include:

- Too many alerts
- Difficulty identifying high-risk patients
- Fragmented patient information
- Manual data review
- Limited visibility into patient trends
- Manual operational reporting
- Delayed escalation

## 6. Product Opportunities

The journey creates opportunities for:

1. Intelligent alert prioritization
2. AI-assisted patient risk identification
3. Automated patient summaries
4. Trend visualization
5. Workflow automation
6. Operational analytics
7. Predictive risk monitoring

## 7. Success Criteria

The user journey will be considered successful when:

- Patients can be enrolled efficiently.
- Monitoring data is available reliably.
- High-risk patients are clearly identified.
- Clinicians can quickly review important alerts.
- Alerts can be tracked from creation to resolution.
- Clinical teams can record interventions and outcomes.
- Administrators can measure operational performance.
