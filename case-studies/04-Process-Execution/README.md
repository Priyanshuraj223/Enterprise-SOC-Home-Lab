# Case Study 04 – Suspicious Process Execution

## Objective

The objective of this case study was to simulate the execution of a Windows command shell process and verify that endpoint telemetry was collected and forwarded to Wazuh SIEM for analysis.

Attackers frequently launch command interpreters during post-exploitation to execute commands, enumerate systems, or launch additional tools.

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

The following PowerShell command was executed:

```powershell
Start-Process cmd.exe "/c echo SOC Lab Process Execution"
```

This launches **cmd.exe**, executes a simple command, and then exits.

Although harmless, this simulates command interpreter execution commonly observed during attacker activity.

---

## Detection Result

The process creation event was captured by Sysmon and forwarded to Wazuh.

This demonstrates that command execution activity can be monitored for investigation.

---

## MITRE ATT&CK Mapping

| Technique | ID |
|-----------|----|
| Command and Scripting Interpreter: Windows Command Shell | T1059.003 |

---

## Outcome

The simulated process execution generated endpoint telemetry that could be investigated using Wazuh SIEM.

---

## Skills Demonstrated

- Process Monitoring
- Windows Process Creation
- Sysmon
- Wazuh SIEM
- Threat Detection
- MITRE ATT&CK Mapping