# Attack Timeline

| Step | Activity |
|------|----------|
| 1 | Windows endpoint operational |
| 2 | Sysmon monitoring enabled |
| 3 | Wazuh Agent collecting logs |
| 4 | Encoded PowerShell command executed |
| 5 | Sysmon generated process creation event |
| 6 | Wazuh Agent forwarded telemetry |
| 7 | Wazuh Manager analyzed the event |
| 8 | Rule 92057 triggered |
| 9 | Alert displayed in Wazuh Dashboard |
| 10 | Investigation completed |

---

## Detection Flow

```
Encoded PowerShell
        │
        ▼
Windows Process Creation
        │
        ▼
Sysmon Event
        │
        ▼
Wazuh Agent
        │
        ▼
Wazuh Manager
        │
        ▼
Rule 92057 Triggered
        │
        ▼
SOC Investigation
```

---

## Result

The simulated attack successfully generated security telemetry and was detected by Wazuh using built-in detection rules, demonstrating the effectiveness of endpoint monitoring with Sysmon and centralized log analysis.
