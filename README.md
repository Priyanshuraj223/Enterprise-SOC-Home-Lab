# Enterprise SOC Home Lab using Wazuh SIEM for Threat Detection and Incident Response

> A production-inspired Security Operations Center (SOC) home lab built using Wazuh SIEM, Ubuntu Server, Windows 11, Sysmon, and Kali Linux to simulate attacks, detect threats, investigate security events, and perform incident response.

---

## Project Overview

This project demonstrates the design and implementation of an enterprise-style Security Operations Center (SOC) in a virtual lab environment.

The objective is to gain hands-on experience with security monitoring, threat detection, incident response, Windows logging, and attack simulation while following industry best practices.

Rather than simply installing security tools, this portfolio focuses on understanding how a SOC operates—from collecting logs to investigating alerts and documenting incidents.

---

## Project Goals

- Build an enterprise SOC environment
- Deploy and configure Wazuh SIEM
- Monitor Windows endpoints using Sysmon
- Collect and analyze security logs
- Simulate real-world cyber attacks
- Investigate alerts
- Map detections to the MITRE ATT&CK framework
- Document incident response procedures
- Build a professional cybersecurity portfolio

---

## Planned Lab Architecture

```
                   Kali Linux
                (Attacker Machine)
                        │
                        │
                Attack Simulation
                        │
                        ▼
                Windows 11 Endpoint
            Sysmon + Wazuh Agent
                        │
                Windows Event Logs
                        │
                        ▼
               Ubuntu Server
              Wazuh Manager
            Wazuh Dashboard
             Wazuh Indexer
                        │
                        ▼
          Threat Detection & Investigation
```

---

## Technology Stack

| Category | Technology |
|----------|------------|
| SIEM | Wazuh |
| Operating System | Ubuntu Server |
| Endpoint | Windows 11 |
| Endpoint Monitoring | Sysmon |
| Attacker Machine | Kali Linux |
| Virtualization | VMware Workstation Pro / VirtualBox |
| Framework | MITRE ATT&CK |
| Version Control | Git & GitHub |
| Scripting | Python |
| Documentation | Markdown |

---

## Planned Attack Scenarios

- Nmap Port Scan
- Brute Force Authentication
- PowerShell Execution
- Suspicious Process Creation
- File Integrity Monitoring
- Malware Simulation (EICAR)
- Persistence Techniques
- Privilege Escalation (Controlled)
- Threat Hunting Exercises

---

## Skills Demonstrated

- Security Operations (SOC)
- SIEM Administration
- Threat Detection
- Security Monitoring
- Incident Response
- Windows Event Log Analysis
- Sysmon
- Linux Administration
- Threat Hunting
- MITRE ATT&CK
- Detection Engineering
- Python Automation
- Git & GitHub

---

## Project Roadmap

- [x] Project Planning
- [ ] Virtual Lab Setup
- [ ] Wazuh Installation
- [ ] Endpoint Monitoring
- [ ] Attack Simulation
- [ ] Detection Engineering
- [ ] Incident Response
- [ ] Threat Hunting
- [ ] Documentation
- [ ] Portfolio Completion

---

## Repository Structure

```
Enterprise-SOC-Home-Lab/
├── architecture/
├── assets/
├── attack-scenarios/
├── configs/
├── dashboards/
├── detection-rules/
├── docs/
├── incident-reports/
├── logs/
├── reports/
├── screenshots/
├── scripts/
├── setup/
└── sigma-rules/
```

---

## Documentation

Detailed documentation will be available in the **docs/** directory.

- Project Bible
- Project Status
- Development Log
- Interview Notes
- Resources

---

## Current Status

**Phase 1 — Project Foundation**

Current Progress:
- Repository initialized
- Documentation structure created
- Development roadmap defined

---

## Future Enhancements

- Active Directory Integration
- Microsoft Sentinel
- Threat Intelligence Integration
- SOAR Automation
- Zeek
- Suricata
- Elastic Stack
- Docker Deployment
- Cloud SOC

---

## Author

**Priyanshu Raj**

Aspiring SOC Analyst | Cybersecurity Enthusiast

GitHub:
https://github.com/Priyanshuraj223

LinkedIn:
https://www.linkedin.com/in/priyanshuraj223

---

## License

This project is licensed under the MIT License.