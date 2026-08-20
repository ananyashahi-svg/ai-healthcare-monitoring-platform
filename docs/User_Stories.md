# CarePulse AI – User Stories & Acceptance Criteria

## 1. Purpose

This document defines the primary user stories and acceptance criteria for the CarePulse AI MVP.

The stories are written using the standard Agile format:

> As a [user], I want [capability], so that [business value].

Acceptance criteria define the expected system behavior and provide a basis for development and testing.

---

# 2. Epic 1 – Patient Management

## US-01 – Create Patient Profile

**As a Care Manager,**

I want to create a patient profile,

**so that**

the patient can be enrolled into the monitoring program.

### Acceptance Criteria

- User must provide all mandatory patient information.
- The system must validate required fields.
- The system must generate a unique patient ID.
- Duplicate patient records should be identified where possible.
- Successfully created patients should have an active or pending monitoring status.
- The creation timestamp should be recorded.

### Priority

**Must Have**

---

## US-02 – View Patient Profile

**As a Clinician,**

I want to view a patient's profile,

**so that**

I can understand the patient's current monitoring status and relevant information.

### Acceptance Criteria

- Authorized users can search for a patient.
- The system displays the patient's basic information.
- The system displays the current risk level.
- The system displays recent monitoring observations.
- The system displays active alerts.
- Unauthorized users cannot access restricted patient information.

### Priority

**Must Have**

---

# 3. Epic 2 – Patient Monitoring

## US-03 – View Vital Signs

**As a Clinician,**

I want to view a patient's vital signs,

**so that**

I can assess recent patient trends.

### Acceptance Criteria

The system should display:

- Blood pressure
- Heart rate
- SpO2
- Temperature

The system should:

- Display the latest available reading.
- Display the timestamp of each reading.
- Allow users to view historical readings.
- Clearly identify abnormal measurements.

### Priority

**Must Have**

---

## US-04 – View Patient Trends

**As a Clinician,**

I want to view historical patient trends,

**so that**

I can identify changes in the patient's condition over time.

### Acceptance Criteria

- Historical measurements must be displayed chronologically.
- Users should be able to select a time period.
- Trends should be visually represented.
- Abnormal measurements should be identifiable.
- The system should indicate when data is unavailable.

### Priority

**Should Have**

---

# 4. Epic 3 – Risk Detection

## US-05 – Calculate Patient Risk Score

**As a Clinician,**

I want the system to provide a patient risk score,

**so that**

I can quickly understand the patient's current risk level.

### Acceptance Criteria

- The system calculates a risk score using available monitoring data.
- The risk score is displayed on the patient profile.
- The system assigns a risk category.
- The system displays relevant contributing factors.
- Risk information must include a timestamp.
- The risk score should not be presented as an automated diagnosis.

### Priority

**Must Have**

---

## US-06 – Identify High-Risk Patients

**As a Clinician,**

I want high-risk patients to be clearly identified,

**so that**

I can prioritize patients who may require clinical review.

### Acceptance Criteria

- High-risk patients must be clearly marked.
- Users must be able to filter patients by risk level.
- High-risk patients should appear prominently on the dashboard.
- The latest risk score must be visible.
- Users must be able to open the patient's profile from the risk list.

### Priority

**Must Have**

---

# 5. Epic 4 – Alert Management

## US-07 – Generate Alert

**As a healthcare system,**

I want to generate alerts when configured conditions are met,

**so that**

potentially important patient changes can be reviewed by the clinical team.

### Acceptance Criteria

An alert should contain:

- Patient ID
- Alert type
- Severity
- Triggering measurement
- Timestamp
- Patient risk level
- Alert status

The system should prevent duplicate alerts for the same event where appropriate.

### Priority

**Must Have**

---

## US-08 – Prioritize Alerts

**As a Clinician,**

I want alerts to be prioritized,

**so that**

I can focus on the most important patient situations first.

### Acceptance Criteria

Alerts should be prioritized using configurable factors such as:

- Severity
- Patient risk level
- Measurement deviation
- Alert age
- Escalation status

The highest-priority alerts should appear first.

### Priority

**Must Have**

---

## US-09 – Acknowledge Alert

**As a Clinician,**

I want to acknowledge an alert,

**so that**

the system records that the alert has been reviewed.

### Acceptance Criteria

- User can acknowledge an open alert.
- The system records the user who acknowledged it.
- The system records the acknowledgement timestamp.
- Alert status changes to the appropriate next state.
- The action is recorded in the audit trail.

### Priority

**Must Have**

---

## US-10 – Assign Alert

**As a Care Manager,**

I want to assign an alert to a clinical team member,

**so that**

responsibility for the alert is clear.

### Acceptance Criteria

- Authorized users can assign alerts.
- The system displays available users.
- The assigned user is recorded.
- The assignment timestamp is recorded.
- The assigned alert is visible in the user's workload.

### Priority

**Should Have**

---

## US-11 – Escalate Alert

**As a Clinician,**

I want to escalate an unresolved high-priority alert,

**so that**

the appropriate clinical team can review it.

### Acceptance Criteria

- Authorized users can escalate eligible alerts.
- The escalation reason should be recorded.
- The escalation timestamp must be recorded.
- The alert status must reflect escalation.
- The escalated alert must be visible to the appropriate team.

### Priority

**Must Have**

---

## US-12 – Resolve Alert

**As a Clinician,**

I want to resolve an alert,

**so that**

the system reflects that the required workflow has been completed.

### Acceptance Criteria

- User can resolve an eligible alert.
- Resolution reason must be captured where required.
- Resolution timestamp must be recorded.
- The user resolving the alert must be recorded.
- Resolved alerts should no longer appear in the open-alert queue.

### Priority

**Must Have**

---

# 6. Epic 5 – Analytics Dashboard

## US-13 – View Operational KPIs

**As a Healthcare Administrator,**

I want to view operational KPIs,

**so that**

I can monitor the performance of the patient monitoring service.

### Acceptance Criteria

The dashboard should display:

- Total monitored patients
- High-risk patients
- Open alerts
- Critical alerts
- Average response time
- Alert resolution rate
- Escalation rate

### Priority

**Must Have**

---

## US-14 – Analyze Alert Trends

**As a Care Manager,**

I want to analyze alert trends,

**so that**

I can identify operational issues and workload patterns.

### Acceptance Criteria

Users should be able to:

- View alert volume over time.
- Filter alerts by severity.
- Filter alerts by status.
- View resolution trends.
- Identify periods of increased alert volume.

### Priority

**Should Have**

---

# 7. Epic 6 – Security & Access

## US-15 – Role-Based Access

**As a System Administrator,**

I want users to have role-based permissions,

**so that**

sensitive patient information is only accessible to authorized users.

### Acceptance Criteria

- Users must authenticate before accessing the platform.
- Access must be based on user role.
- Unauthorized users cannot access restricted patient information.
- User actions should be auditable.
- Permissions should follow the principle of least privilege.

### Priority

**Must Have**

---

# 8. Epic 7 – AI-Assisted Insights

## US-16 – Explain Risk Factors

**As a Clinician,**

I want to understand the factors contributing to a patient's risk score,

**so that**

I can review the information supporting the system's risk assessment.

### Acceptance Criteria

- The system displays relevant contributing factors.
- Factors should be based on available patient data.
- The system should distinguish observations from AI-generated insights.
- AI insights should not be presented as a diagnosis.
- Clinicians remain responsible for clinical decisions.

### Priority

**Should Have**

---

## US-17 – Generate Patient Summary

**As a Clinician,**

I want an AI-assisted summary of recent patient monitoring information,

**so that**

I can quickly understand important trends before reviewing the detailed record.

### Acceptance Criteria

The summary should:

- Highlight recent abnormal observations.
- Identify important trends.
- Include relevant alert information.
- Identify missing or incomplete data where applicable.
- Clearly indicate that the summary is AI-generated.
- Allow the clinician to review the underlying data.

### Priority

**Could Have**

---

# 9. Prioritization

| Story | Priority | MVP |
|---|---|---|
| US-01 Create Patient | Must Have | Yes |
| US-02 View Patient | Must Have | Yes |
| US-03 View Vital Signs | Must Have | Yes |
| US-04 View Trends | Should Have | Yes |
| US-05 Risk Score | Must Have | Yes |
| US-06 High-Risk Patients | Must Have | Yes |
| US-07 Generate Alert | Must Have | Yes |
| US-08 Prioritize Alerts | Must Have | Yes |
| US-09 Acknowledge Alert | Must Have | Yes |
| US-10 Assign Alert | Should Have | Yes |
| US-11 Escalate Alert | Must Have | Yes |
| US-12 Resolve Alert | Must Have | Yes |
| US-13 Operational KPIs | Must Have | Yes |
| US-14 Alert Trends | Should Have | Yes |
| US-15 Role-Based Access | Must Have | Yes |
| US-16 Explain Risk Factors | Should Have | Phase 2 |
| US-17 AI Patient Summary | Could Have | Phase 2 |

# 10. Definition of Done

A user story is considered complete when:

- Requirements are understood and documented.
- Acceptance criteria are met.
- Development is completed.
- Unit/API/UI testing is completed where applicable.
- QA validation is completed.
- No critical defects remain.
- UAT acceptance criteria are satisfied.
- Relevant documentation is updated.
- The feature is ready for release.

# 11. Traceability

The user stories should be traceable to:

**Business Requirement → Product Requirement → User Story → Acceptance Criteria → Test Case → Release**

This ensures that business needs remain connected to the delivered product functionality.
