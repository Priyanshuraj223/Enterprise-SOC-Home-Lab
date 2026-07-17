# Attack Timeline

| Step | Activity |
|------|----------|
| 1 | Windows endpoint operational |
| 2 | Sysmon monitoring enabled |
| 3 | Wazuh Agent collecting logs |
| 4 | PowerShell executed `Start-Process` |
| 5 | cmd.exe launched |
| 6 | Sysmon generated process creation event |
| 7 | Wazuh received telemetry |
| 8 | Investigation performed |

---

## Detection Flow

```
PowerShell Script
        │
        ▼
Start-Process
        │
        ▼
cmd.exe
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

The simulated process execution successfully generated endpoint telemetry that can be used by SOC analysts to investigate process creation events and parent-child process relationships.