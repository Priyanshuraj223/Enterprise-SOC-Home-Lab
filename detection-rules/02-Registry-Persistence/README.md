# Detection Rule 02 – Registry Run Key Persistence

## Overview

This detection identifies persistence mechanisms that use the Windows Registry **Run** key. Attackers commonly create or modify Run keys so that malware or scripts execute automatically when a user logs in.

---

## Detection Logic

Monitor registry modification events for the following location:

```
HKCU\Software\Microsoft\Windows\CurrentVersion\Run
```

Any unexpected creation or modification of values in this key should be investigated.

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| Boot or Logon Autostart Execution: Registry Run Keys / Startup Folder | T1547.001 |

---

## Lab Demonstration

The following PowerShell command was executed during the lab:

```powershell
New-ItemProperty `
    -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" `
    -Name "SOCLabPersistence" `
    -Value "notepad.exe" `
    -PropertyType String `
    -Force
```

This creates a Registry Run key that launches **notepad.exe** whenever the user logs in.

---

## Detection Source

- Windows Sysmon
- Event ID: 13 (Registry Value Set)
- Wazuh Agent
- Wazuh Manager

---

## Investigation Checklist

When a Run key modification is detected, verify:

- Registry path
- Value name
- Data written
- User account
- Parent process
- Time of modification
- Whether the executable is trusted

---

## Why It Matters

Registry Run keys are one of the most common persistence mechanisms used by malware. Monitoring these locations helps SOC analysts detect unauthorized software configured to execute automatically after user logon.

---

## Skills Demonstrated

- Registry Monitoring
- Persistence Detection
- Sysmon Event Analysis
- Wazuh SIEM
- MITRE ATT&CK Mapping
- Detection Engineering
