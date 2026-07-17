# Detection Rule 03 – Suspicious Process Execution

## Overview

This detection monitors the execution of the Windows Command Prompt (`cmd.exe`). Command interpreters are frequently abused by attackers to execute system commands, launch scripts, and perform post-exploitation activities.

---

## Detection Logic

Monitor process creation events where:

```
Process Name = cmd.exe
```

Review the parent process and command-line arguments to determine whether the execution is legitimate or suspicious.

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| Command and Scripting Interpreter: Windows Command Shell | T1059.003 |

---

## Lab Demonstration

The following PowerShell command was executed during the lab:

```powershell
Start-Process cmd.exe "/c echo SOC Lab Process Execution"
```

This launches **cmd.exe**, executes a simple command, and then exits.

---

## Detection Source

- Windows Sysmon
- Event ID: 1 (Process Creation)
- Wazuh Agent
- Wazuh Manager

---

## Investigation Checklist

When `cmd.exe` execution is detected, verify:

- Parent process
- User account
- Full command line
- Child processes
- Execution time
- Process hash
- Related network connections

---

## Why It Matters

Command Prompt is a legitimate administrative tool but is also widely used by adversaries for reconnaissance, persistence, lateral movement, and payload execution. Monitoring process creation events helps SOC analysts distinguish normal administration from potentially malicious activity.

---

## Skills Demonstrated

- Process Monitoring
- Sysmon Event Analysis
- Wazuh SIEM
- Windows Threat Detection
- MITRE ATT&CK Mapping
- Detection Engineering