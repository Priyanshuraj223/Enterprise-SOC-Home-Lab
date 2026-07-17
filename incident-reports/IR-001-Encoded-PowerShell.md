# Incident Report IR-001 – Encoded PowerShell Execution

## Executive Summary

An alert was generated after PowerShell was executed using the `-EncodedCommand` parameter. This technique is commonly used to hide malicious commands and is frequently associated with post-exploitation activity.

In this lab, the activity was intentionally simulated to validate endpoint monitoring and detection capabilities using Sysmon and Wazuh.

---

## Incident Details

| Field | Value |
|------|------|
| Incident ID | IR-001 |
| Severity | Medium |
| Status | Closed |
| Detection Source | Wazuh SIEM |
| Endpoint | Windows 11 |
| MITRE ATT&CK | T1059.001 |

---

## Timeline

| Time | Event |
|------|-------|
| T0 | PowerShell launched |
| T1 | Encoded command executed |
| T2 | Sysmon generated Process Creation event |
| T3 | Wazuh received the event |
| T4 | Analyst reviewed the alert |

---

## Indicators of Compromise (IOCs)

- Process: `powershell.exe`
- Argument: `-EncodedCommand`
- Parent Process: `powershell.exe`
- Log Source: Sysmon Event ID 1

---

## Investigation

The command was decoded and verified to execute:

```
Hello SOC
```

No additional payloads, persistence mechanisms, or network activity were observed.

---

## Impact Assessment

This was a controlled lab exercise. No systems were compromised, and no malicious behavior occurred beyond the simulated execution.

---

## MITRE ATT&CK Mapping

- **T1059.001 – Command and Scripting Interpreter: PowerShell**

---

## Lessons Learned

- Encoded PowerShell execution should always be reviewed.
- Parent-child process relationships provide valuable investigation context.
- Sysmon and Wazuh successfully captured the activity.