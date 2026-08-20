-- CarePulse AI
-- Healthcare Monitoring Analytics
-- Synthetic data only

-- 1. Count patients by risk level
SELECT
    risk_level,
    COUNT(*) AS patient_count
FROM patients
GROUP BY risk_level
ORDER BY patient_count DESC;


-- 2. Identify high-risk patients
SELECT
    patient_id,
    age,
    risk_score,
    risk_level
FROM patients
WHERE risk_level = 'High'
ORDER BY risk_score DESC;


-- 3. Average heart rate by risk level
SELECT
    risk_level,
    ROUND(AVG(heart_rate), 2) AS avg_heart_rate
FROM patient_vitals
GROUP BY risk_level;


-- 4. Average SpO2 by risk level
SELECT
    risk_level,
    ROUND(AVG(spo2), 2) AS avg_spo2
FROM patient_vitals
GROUP BY risk_level;


-- 5. Count alerts by severity
SELECT
    severity,
    COUNT(*) AS alert_count
FROM alerts
GROUP BY severity
ORDER BY alert_count DESC;


-- 6. Count open alerts
SELECT
    COUNT(*) AS open_alerts
FROM alerts
WHERE status = 'Open';


-- 7. Average alert response time
SELECT
    ROUND(AVG(response_time_minutes), 2) AS avg_response_time_minutes
FROM alerts
WHERE status = 'Resolved';


-- 8. Alert resolution rate
SELECT
    ROUND(
        100.0 * SUM(
            CASE WHEN status = 'Resolved' THEN 1 ELSE 0 END
        ) / COUNT(*),
        2
    ) AS resolution_rate_percentage
FROM alerts;


-- 9. Escalation rate
SELECT
    ROUND(
        100.0 * SUM(
            CASE WHEN escalated = TRUE THEN 1 ELSE 0 END
        ) / COUNT(*),
        2
    ) AS escalation_rate_percentage
FROM alerts;


-- 10. Clinician alert workload
SELECT
    assigned_clinician,
    COUNT(*) AS alert_count
FROM alerts
WHERE assigned_clinician IS NOT NULL
GROUP BY assigned_clinician
ORDER BY alert_count DESC;


-- 11. Average response time by severity
SELECT
    severity,
    ROUND(AVG(response_time_minutes), 2) AS avg_response_time
FROM alerts
WHERE status = 'Resolved'
GROUP BY severity
ORDER BY avg_response_time DESC;


-- 12. Daily alert volume
SELECT
    DATE(alert_created_at) AS alert_date,
    COUNT(*) AS alert_count
FROM alerts
GROUP BY DATE(alert_created_at)
ORDER BY alert_date;
