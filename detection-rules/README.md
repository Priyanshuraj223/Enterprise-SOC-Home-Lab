# Detection Rules

## Overview

This directory contains the detection logic developed and validated as part of the Enterprise SOC Home Lab.

Each detection rule documents:

- Detection objective
- MITRE ATT&CK mapping
- Detection source
- Investigation guidance
- Security relevance

---

## Available Detection Rules

| Rule | Technique | MITRE ATT&CK |
|------|-----------|--------------|
| Encoded PowerShell | PowerShell Execution | T1059.001 |
| Registry Run Key Persistence | Registry Persistence | T1547.001 |
| Suspicious Process Execution | Windows Command Shell | T1059.003 |

---

## Detection Sources

- Sysmon
- Windows Event Logs
- Wazuh Agent
- Wazuh SIEM

---

## Skills Demonstrated

- Detection Engineering
- Threat Detection
- Windows Event Analysis
- SIEM Monitoring
- MITRE ATT&CK Mapping