# Detection Rules

## Overview

This directory contains the detection logic developed and validated in the Enterprise SOC Home Lab. Each rule demonstrates how security events generated during attack simulations can be identified, analyzed, and investigated using Wazuh SIEM and Sysmon.

---

## Detection Rules

| Rule | Description | MITRE ATT&CK |
|------|-------------|--------------|
| Encoded PowerShell Execution | Detects PowerShell executed using the `-EncodedCommand` parameter. | T1059.001 |
| Registry Run Key Persistence | Detects creation or modification of Registry Run keys used for persistence. | T1547.001 |
| Suspicious Process Execution | Detects execution of the Windows Command Prompt (`cmd.exe`). | T1059.003 |

---

## Detection Sources

- Sysmon
- Windows Event Logs
- Wazuh Agent
- Wazuh SIEM

---

## Skills Demonstrated

- Detection Engineering
- SIEM Monitoring
- Windows Event Analysis
- Threat Detection
- MITRE ATT&CK Mapping
- Security Investigation

---

## Related Sections

- `case-studies/`
- `sigma-rules/`
- `incident-reports/`