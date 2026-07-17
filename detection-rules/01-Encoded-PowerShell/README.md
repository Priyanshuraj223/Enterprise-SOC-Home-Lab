# Detection Rule 01 – Encoded PowerShell Execution

## Overview

This detection focuses on identifying PowerShell commands executed with the **`-EncodedCommand`** parameter.

Attackers commonly encode PowerShell commands using Base64 to conceal malicious scripts, evade simple detection mechanisms, and execute payloads during post-exploitation.

---

## Detection Logic

The detection monitors PowerShell process creation events and searches for the following command-line argument:

```
-EncodedCommand
```

If present, the execution should be investigated.

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| Command and Scripting Interpreter: PowerShell | T1059.001 |

---

## Lab Demonstration

The following command was executed during the lab:

```powershell
powershell.exe -EncodedCommand VwByAGkAdABlAC0ASABvAHMAdAAgACIASABlAGwAbABvACAAUwBPAEMAIgA=
```

Expected output:

```
Hello SOC
```

The PowerShell process was monitored by Sysmon, and the event was forwarded to Wazuh for analysis.

---

## Detection Source

- Windows Sysmon
- Event ID: 1 (Process Creation)
- Wazuh Agent
- Wazuh Manager

---

## Investigation Checklist

When an encoded PowerShell command is detected, verify:

- Parent process
- User account
- Full command line
- Process hash
- Time of execution
- Related child processes
- Network connections initiated by PowerShell

---

## Why It Matters

Encoded PowerShell commands are frequently used by adversaries to:

- Hide malicious scripts
- Download additional payloads
- Execute malware
- Establish persistence
- Evade basic command-line monitoring

While administrators may occasionally use encoded commands for automation, unexpected executions should always be reviewed.

---

## Skills Demonstrated

- Threat Detection
- PowerShell Analysis
- Sysmon Monitoring
- Wazuh SIEM
- MITRE ATT&CK Mapping
- Detection Engineering