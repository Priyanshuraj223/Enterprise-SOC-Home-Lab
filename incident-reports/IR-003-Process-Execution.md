# Incident Report IR-003 – Suspicious Process Execution

## Executive Summary

A security alert was generated following the execution of the Windows Command Prompt (`cmd.exe`) from a PowerShell process. Command interpreters are commonly used by attackers during post-exploitation to execute system commands, download payloads, and perform reconnaissance.

This activity was intentionally simulated in the SOC home lab to validate endpoint visibility, process monitoring, and alert generation using Sysmon and Wazuh.

---

# Incident Details

| Field | Value |
|------|------|
| Incident ID | IR-003 |
| Severity | Medium |
| Status | Closed |
| Detection Source | Wazuh SIEM |
| Endpoint | Windows 11 |
| MITRE ATT&CK | T1059.003 |

---

# Timeline

| Time | Event |
|------|-------|
| T0 | PowerShell script executed |
| T1 | `cmd.exe` launched using `Start-Process` |
| T2 | Sysmon logged Process Creation event |
| T3 | Wazuh Agent forwarded telemetry |
| T4 | Wazuh Manager generated alert |
| T5 | SOC analyst investigated the event |

---

# Indicators of Compromise (IOCs)

| Indicator | Value |
|----------|-------|
| Parent Process | powershell.exe |
| Child Process | cmd.exe |
| Command | `Start-Process cmd.exe "/c echo SOC Lab Process Execution"` |
| Log Source | Sysmon Event ID 1 |

---

# Investigation

The investigation confirmed that the PowerShell script intentionally launched `cmd.exe` using the `Start-Process` cmdlet.

The executed command simply displayed the message:

```
SOC Lab Process Execution
```

No additional child processes, persistence mechanisms, file modifications, or network connections were observed.

The event was determined to be part of an authorized security lab exercise.

---

# Impact Assessment

This activity posed no risk to the environment because it was executed within a controlled SOC laboratory.

The objective was to validate:

- Endpoint process monitoring
- Sysmon event generation
- Wazuh log collection
- Analyst investigation workflow

---

# MITRE ATT&CK Mapping

| Technique | ID |
|-----------|----|
| Command and Scripting Interpreter: Windows Command Shell | T1059.003 |

---

# Detection Summary

The detection pipeline functioned as expected.

1. PowerShell executed the process.
2. Windows created `cmd.exe`.
3. Sysmon recorded the process creation event.
4. Wazuh Agent collected the event.
5. Wazuh Manager generated an alert.
6. The SOC analyst reviewed and validated the activity.

---

# Lessons Learned

- Command shell execution should always be reviewed in the context of the parent process and command-line arguments.
- Parent-child process relationships provide valuable context during investigations.
- Sysmon provides detailed endpoint telemetry for process creation events.
- Wazuh successfully collected and centralized the event for SOC analysis.
- Controlled attack simulations are valuable for validating detection and response capabilities.

---

# Conclusion

The simulated process execution successfully demonstrated the organization's ability to detect, collect, and investigate Windows process creation events using Sysmon and Wazuh SIEM. The incident was confirmed as a planned laboratory exercise and required no remediation.