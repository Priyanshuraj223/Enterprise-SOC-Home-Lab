# 🛡️ Enterprise SOC Home Lab

> A production-inspired Security Operations Center (SOC) home lab built using **Wazuh SIEM**, **Ubuntu Server**, **Windows 11**, **Sysmon**, and **Kali Linux** to simulate cyber attacks, detect threats, investigate security events, develop detection rules, and perform incident response.

![Platform](https://img.shields.io/badge/Platform-Windows%2011-blue)
![SIEM](https://img.shields.io/badge/SIEM-Wazuh-green)
![Monitoring](https://img.shields.io/badge/Monitoring-Sysmon-orange)
![MITRE ATT&CK](https://img.shields.io/badge/MITRE-ATT%26CK-red)
![License](https://img.shields.io/badge/License-MIT-yellow)

---

# 📌 Overview

The Enterprise SOC Home Lab is a hands-on cybersecurity project that demonstrates the deployment and operation of a Security Operations Center (SOC) using industry-standard tools.

The lab simulates real-world attack scenarios, collects endpoint telemetry using Sysmon, centralizes logs in Wazuh SIEM, develops detection content, maps activity to the MITRE ATT&CK framework, and documents investigations through structured incident reports.

This project demonstrates practical SOC Analyst skills including detection engineering, threat hunting, Windows event analysis, and incident response.

---

# 🎯 Objectives

- Deploy an enterprise-style SOC lab
- Configure Wazuh SIEM
- Monitor Windows endpoints using Sysmon
- Simulate realistic cyber attacks
- Generate and analyze security telemetry
- Develop detection rules
- Create Sigma rules
- Investigate security events
- Produce incident reports
- Map detections to MITRE ATT&CK
- Build a professional cybersecurity portfolio

---

# 🏗️ Lab Architecture

![Enterprise SOC Architecture](architecture/diagrams/soc-home-lab.png)

The architecture consists of:

- Kali Linux Attack Machine
- Windows 11 Endpoint
- Sysmon Endpoint Monitoring
- Wazuh Agent
- Ubuntu Server running Wazuh SIEM
- Centralized Log Collection
- Threat Detection & Investigation
- SOC Analyst Workflow

Detailed architecture documentation is available in:

```text
architecture/
```

---

# 💻 Lab Environment

| Component | Technology |
|-----------|------------|
| Hypervisor | VirtualBox |
| SIEM | Wazuh 4.14.x |
| Manager OS | Ubuntu Server |
| Endpoint | Windows 11 |
| Endpoint Monitoring | Sysmon |
| Attacker Machine | Kali Linux |
| Detection Framework | MITRE ATT&CK |
| Version Control | Git & GitHub |

---

# ⚙️ Technology Stack

- Wazuh SIEM
- Sysmon
- Windows 11
- Ubuntu Server
- Kali Linux
- VirtualBox
- PowerShell
- Sigma Rules
- MITRE ATT&CK Framework
- Markdown
- Git
- GitHub

---

# 📂 Repository Structure

```text
Enterprise-SOC-Home-Lab/
│
├── architecture/
│   ├── diagrams/
│   └── README.md
│
├── attack-scenarios/
│
├── case-studies/
│   ├── 01-Nmap-Reconnaissance/
│   ├── 02-PowerShell-Execution/
│   ├── 03-Registry-Persistence/
│   ├── 04-Process-Execution/
│   └── README.md
│
├── detection-rules/
│   ├── 01-Encoded-PowerShell/
│   ├── 02-Registry-Persistence/
│   ├── 03-Process-Execution/
│   └── README.md
│
├── incident-reports/
│   ├── IR-001-Encoded-PowerShell.md
│   ├── IR-002-Registry-Run-Key-Persistence.md
│   ├── IR-003-Process-Execution.md
│   └── README.md
│
├── scripts/
│   ├── modules/
│   ├── common/
│   ├── Run-All.ps1
│   └── Cleanup.ps1
│
├── sigma-rules/
│   ├── 01-Encoded-PowerShell/
│   ├── 02-Registry-Persistence/
│   ├── 03-Process-Execution/
│   └── README.md
│
├── setup/
├── dashboards/
├── configs/
├── reports/
├── logs/
└── README.md
```

---

# 🚀 Attack Simulation Toolkit

The project includes a modular PowerShell toolkit for generating realistic Windows security telemetry.

| Module | Description |
|--------|-------------|
| 01 | Encoded PowerShell Execution |
| 02 | Scheduled Task Persistence |
| 03 | Registry Run Key Persistence |
| 04 | Suspicious Process Execution |
| 05 | Windows Defender Status |
| Cleanup | Restore Lab Environment |

---

# 📖 Case Studies

| Case Study | MITRE ATT&CK |
|------------|---------------|
| [Nmap Reconnaissance](case-studies/01-Nmap-Reconnaissance/) | T1046 |
| [Encoded PowerShell Execution](case-studies/02-PowerShell-Execution/) | T1059.001 |
| [Registry Run Key Persistence](case-studies/03-Registry-Persistence/) | T1547.001 |
| [Suspicious Process Execution](case-studies/04-Process-Execution/) | T1059.003 |

---

# 🛡️ Detection Rules

- [Encoded PowerShell Detection](detection-rules/01-Encoded-PowerShell/)
- [Registry Persistence Detection](detection-rules/02-Registry-Persistence/)
- [Process Execution Detection](detection-rules/03-Process-Execution/)

---

# 📑 Sigma Rules

- [Encoded PowerShell](sigma-rules/01-Encoded-PowerShell/)
- [Registry Persistence](sigma-rules/02-Registry-Persistence/)
- [Windows Command Shell Execution](sigma-rules/03-Process-Execution/)

---

# 🚨 Incident Reports

- [IR-001 — Encoded PowerShell Execution](incident-reports/IR-001-Encoded-PowerShell.md)
- [IR-002 — Registry Run Key Persistence](incident-reports/IR-002-Registry-Run-Key-Persistence.md)
- [IR-003 — Suspicious Process Execution](incident-reports/IR-003-Process-Execution.md)

---

# 🎯 Skills Demonstrated

- SIEM Administration
- Windows Security Monitoring
- Threat Detection
- Detection Engineering
- Sigma Rule Development
- Incident Response
- MITRE ATT&CK Mapping
- Threat Hunting
- Windows Event Analysis
- PowerShell Automation
- Technical Documentation
- Git & GitHub

---

# 📈 Project Status

| Component | Status |
|-----------|--------|
| SOC Lab Deployment | ✅ Complete |
| Wazuh Configuration | ✅ Complete |
| Sysmon Integration | ✅ Complete |
| Attack Simulation Toolkit | ✅ Complete |
| Case Studies | ✅ Complete |
| Detection Rules | ✅ Complete |
| Sigma Rules | ✅ Complete |
| Incident Reports | ✅ Complete |
| Architecture Documentation | ✅ Complete |

---

# 🔮 Future Enhancements

The Enterprise SOC Home Lab is designed to be continuously expandable. Future improvements planned for the project include:

- Active Directory Domain Lab
- Windows Server Integration
- Microsoft Sentinel Integration
- Zeek Network Security Monitoring
- Suricata IDS/IPS Integration
- Elastic Stack (ELK)
- Security Orchestration, Automation and Response (SOAR)
- Threat Intelligence Integration
- Docker-based Lab Deployment
- Azure Cloud SOC Environment
- Additional Attack Simulations
- Advanced Threat Hunting Playbooks
- Custom Wazuh Dashboard Visualizations
- Detection Rule Expansion
- Automated Alerting and Notifications

---

# 📚 Learning Outcomes

Through this project, the following practical cybersecurity concepts were explored and implemented:

- Deploying and managing a SIEM platform
- Collecting and analyzing Windows security logs
- Configuring Sysmon for endpoint visibility
- Simulating attacker techniques in a controlled environment
- Investigating security alerts generated by Wazuh
- Developing custom detection logic
- Writing Sigma rules
- Mapping attacker behavior to the MITRE ATT&CK Framework
- Performing structured incident response
- Documenting investigations using industry-style reports
- Organizing a cybersecurity project for portfolio presentation

---

# 🌟 Key Highlights

✔ Enterprise-style SOC architecture

✔ Wazuh SIEM deployment

✔ Windows endpoint monitoring with Sysmon

✔ Safe PowerShell attack simulation toolkit

✔ Detection Engineering

✔ Sigma Rule Development

✔ Incident Response Documentation

✔ MITRE ATT&CK Mapping

✔ Professional Case Studies

✔ GitHub Portfolio Documentation

---

# 📂 Repository Navigation

| Directory | Purpose |
|-----------|---------|
| `architecture/` | Lab architecture documentation and diagrams |
| `attack-scenarios/` | Attack scenario documentation |
| `case-studies/` | Detailed attack investigations |
| `configs/` | Configuration files |
| `dashboards/` | Wazuh dashboard resources |
| `detection-rules/` | Detection engineering documentation |
| `incident-reports/` | Incident response reports |
| `logs/` | Sample logs and evidence |
| `reports/` | Project reports |
| `scripts/` | PowerShell attack simulation toolkit |
| `setup/` | Installation and configuration guides |
| `sigma-rules/` | Sigma detection rules |

---

# 🤝 Acknowledgements

This project was inspired by industry best practices in:

- Blue Team Operations
- Security Operations Centers (SOC)
- Detection Engineering
- Threat Hunting
- Incident Response
- Digital Forensics
- MITRE ATT&CK Framework
- Wazuh Community
- Sysinternals Sysmon

Special thanks to the open-source cybersecurity community for providing excellent tools and educational resources that make projects like this possible.

---

# 👨‍💻 Author

**Priyanshu Raj**

**Aspiring SOC Analyst | Cybersecurity Enthusiast**

### Connect with Me

**GitHub**

[https://github.com/Priyanshuraj223](https://github.com/Priyanshuraj223)

**LinkedIn**

[https://www.linkedin.com/in/priyanshuraj223](https://www.linkedin.com/in/priyanshuraj223)

---

# 📄 License

This project is licensed under the **MIT License**.

You are free to use, modify, and distribute this project in accordance with the terms of the MIT License.

---

# ⚠️ Disclaimer

This repository has been created solely for educational purposes and authorized security testing within a controlled laboratory environment.

All attack simulations, scripts, and techniques demonstrated in this repository were executed only on systems owned by the author or within isolated virtual machines specifically configured for cybersecurity training.

Do **not** use any scripts, techniques, or procedures contained in this repository against systems or networks without explicit authorization.

The author assumes no responsibility for misuse of the information provided.

---

<div align="center">

## ⭐ If you found this project useful, consider giving it a star!

**Thank you for visiting the Enterprise SOC Home Lab repository.**

*Happy Learning and Stay Secure!* 🛡️

</div>
