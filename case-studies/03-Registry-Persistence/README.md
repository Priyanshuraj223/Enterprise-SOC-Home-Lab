# Case Study 03 – Registry Run Key Persistence

## Objective

The objective of this case study was to simulate a common Windows persistence technique by creating a Registry Run key that automatically executes a program whenever the user logs in.

This technique is frequently used by malware to maintain persistence after system reboot or user logon.

---

## Lab Environment

| Component | Details |
|----------|---------|
| SIEM | Wazuh 4.14.x |
| Endpoint | Windows 11 |
| Monitoring | Sysmon + Wazuh Agent |
| Framework | MITRE ATT&CK |

---

## Attack Performed

The following PowerShell script was executed:

```powershell
$Key = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$Name = "SOCLabPersistence"
$Value = "notepad.exe"

New-ItemProperty `
    -Path $Key `
    -Name $Name `
    -Value $Value `
    -PropertyType String `
    -Force
```

The script creates a Registry Run key named **SOCLabPersistence** that launches **notepad.exe** whenever the current user logs in.

---

## Detection Result

The registry modification generated Windows telemetry that was collected by Sysmon and forwarded to Wazuh for analysis.

This demonstrates how registry persistence activity can be monitored in a SOC environment.

---

## MITRE ATT&CK Mapping

| Technique | ID |
|-----------|----|
| Registry Run Keys / Startup Folder | T1547.001 |

---

## Outcome

The Registry Run key was successfully created and monitored by the SOC lab.

This validates that registry-based persistence techniques can be investigated using Windows logs, Sysmon, and Wazuh.

---

## Skills Demonstrated

- Windows Registry
- Persistence Techniques
- PowerShell
- Sysmon
- Wazuh SIEM
- Threat Detection
- MITRE ATT&CK Mapping