# SOC Case Studies

## Overview

This directory contains practical attack simulations performed in the Enterprise SOC Home Lab. Each case study demonstrates a complete detection workflow, including attack execution, telemetry collection, investigation, MITRE ATT&CK mapping, and analysis using Wazuh SIEM.

The objective is to showcase hands-on SOC Analyst skills through realistic scenarios executed in a controlled lab environment.

---

# Lab Environment

| Component | Technology |
|-----------|------------|
| Operating System | Windows 11 |
| SIEM | Wazuh 4.14.x |
| Endpoint Monitoring | Sysmon |
| Attack Machine | Kali Linux |
| Server | Ubuntu Server |
| Framework | MITRE ATT&CK |

---

# Available Case Studies

| Case Study | MITRE ATT&CK | Description |
|------------|--------------|-------------|
| 01 – Nmap Reconnaissance | T1046 | Simulated network reconnaissance using Nmap to identify active hosts and services. |
| 02 – Encoded PowerShell Execution | T1059.001 | Executed Base64-encoded PowerShell commands and analyzed detection through Sysmon and Wazuh. |
| 03 – Registry Run Key Persistence | T1547.001 | Simulated persistence by creating a Registry Run key for automatic execution during user logon. |
| 04 – Suspicious Process Execution | T1059.003 | Simulated execution of `cmd.exe` from PowerShell to validate process creation monitoring. |

---

# Investigation Workflow

Each case study follows a consistent methodology:

1. Attack Simulation
2. Endpoint Telemetry Collection
3. Event Detection
4. Alert Generation
5. Investigation
6. MITRE ATT&CK Mapping
7. Documentation
8. Lessons Learned

---

# Skills Demonstrated

- Threat Detection
- SIEM Monitoring
- Windows Event Analysis
- Sysmon Log Analysis
- Detection Engineering
- Incident Investigation
- MITRE ATT&CK Mapping
- Security Documentation

---

# Related Sections

- `detection-rules/` – Detection logic and analysis
- `sigma-rules/` – Portable Sigma detection rules
- `incident-reports/` – SOC investigation reports
- `scripts/` – Attack simulation toolkit
- `architecture/` – Lab architecture documentation

---

# Purpose

These case studies are intended to demonstrate practical SOC Analyst capabilities through repeatable attack simulations and structured security investigations using industry-standard tools and methodologies.