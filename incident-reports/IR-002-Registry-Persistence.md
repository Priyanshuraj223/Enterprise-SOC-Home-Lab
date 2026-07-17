# Incident Report IR-002 – Registry Run Key Persistence

## Executive Summary

A registry modification alert was generated after a new value was added to the Windows Registry **Run** key. Registry Run keys are commonly abused by attackers to establish persistence by automatically launching programs during user logon.

This activity was intentionally simulated to validate endpoint monitoring and detection using Sysmon and Wazuh.

---

## Incident Details

| Field | Value |
|------|------|
| Incident ID | IR-002 |
| Severity | High |
| Status | Closed |
| Detection Source | Wazuh SIEM |
| Endpoint | Windows 11 |
| MITRE ATT&CK | T1547.001 |

---

## Timeline

| Time | Event |
|------|-------|
| T0 | PowerShell script executed |
| T1 | Registry Run key created |
| T2 | Sysmon generated Registry Event |
| T3 | Wazuh received the event |
| T4 | SOC analyst investigated the alert |

---

## Indicators of Compromise (IOCs)

- Registry Path:
  `HKCU\Software\Microsoft\Windows\CurrentVersion\Run`
- Value Name:
  `SOCLabPersistence`
- Value Data:
  `notepad.exe`
- Log Source:
  Sysmon Event ID 13

---

## Investigation

The registry modification was reviewed and confirmed to be part of a controlled security lab exercise. The Run key was configured to launch **notepad.exe** at user logon.

No additional persistence mechanisms or unauthorized changes were observed.

---

## Impact Assessment

This was a planned simulation for detection validation. No malicious payloads were executed, and no unauthorized persistence remained after cleanup.

---

## MITRE ATT&CK Mapping

- **T1547.001 – Boot or Logon Autostart Execution: Registry Run Keys / Startup Folder**

---

## Lessons Learned

- Registry Run keys are a common persistence technique.
- Registry monitoring provides early visibility into persistence attempts.
- Sysmon and Wazuh successfully detected the registry modification.
- Analysts should verify both the registry value and the referenced executable before determining risk.