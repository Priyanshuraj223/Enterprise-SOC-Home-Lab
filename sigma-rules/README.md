# Sigma Rules

## Overview

This directory contains Sigma rules created as part of the Enterprise SOC Home Lab. Sigma is a generic signature format that enables portable detection logic across multiple SIEM and log management platforms.

The rules are based on attack simulations performed in this lab and demonstrate practical detection engineering concepts.

---

## Available Rules

| Rule | Purpose | MITRE ATT&CK |
|------|---------|--------------|
| Encoded PowerShell Execution | Detects PowerShell commands executed with `-EncodedCommand`. | T1059.001 |
| Registry Run Key Persistence | Detects Registry Run key modifications used for persistence. | T1547.001 |
| Windows Command Shell Execution | Detects execution of `cmd.exe`. | T1059.003 |

---

## Log Source

- Windows
- Sysmon
- Process Creation
- Registry Events

---

## Skills Demonstrated

- Sigma Rule Development
- Threat Detection
- Detection Engineering
- SIEM Integration
- MITRE ATT&CK Mapping

---

## Related Sections

- `detection-rules/`
- `case-studies/`
- `incident-reports/`