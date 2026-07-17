# Attack Timeline

| Step | Activity |
|------|----------|
| 1 | Windows endpoint running |
| 2 | Sysmon monitoring enabled |
| 3 | Wazuh Agent collecting telemetry |
| 4 | PowerShell script executed |
| 5 | Registry Run key created |
| 6 | Sysmon recorded registry activity |
| 7 | Wazuh received telemetry |
| 8 | Investigation performed |

---

## Detection Flow

```
PowerShell Script
        │
        ▼
Registry Modified
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
SOC Investigation
```

---

## Result

The simulation successfully demonstrated how Registry Run keys can be used to establish persistence and how endpoint monitoring tools can capture this activity for investigation.