# 🛡️ Enterprise SOC Home Lab

> A production-inspired Security Operations Center (SOC) home lab built using **Wazuh SIEM**, **Ubuntu Server**, **Windows 11**, **Sysmon**, and **Kali Linux** to simulate cyber attacks, detect threats, investigate security events, and perform incident response.

---

## 📌 Project Overview

This project demonstrates the design, deployment, and operation of an enterprise-style Security Operations Center (SOC) in a virtual lab environment.

The objective is to gain practical experience with security monitoring, threat detection, Windows event logging, attack simulation, detection engineering, and incident response while following industry best practices.

Rather than simply installing security tools, this repository focuses on understanding the complete SOC workflow—from generating telemetry and detecting threats to investigating alerts and documenting incidents.

---

# 🎯 Project Goals

- Build an enterprise SOC environment
- Deploy and configure Wazuh SIEM
- Monitor Windows endpoints using Sysmon
- Collect and analyze security logs
- Simulate real-world cyber attacks
- Investigate alerts in Wazuh
- Perform threat hunting
- Map detections to the MITRE ATT&CK Framework
- Build reusable attack simulation scripts
- Document incident response procedures
- Develop a professional cybersecurity portfolio

---

# 🏗️ Lab Architecture

```text
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

# 💻 Lab Environment

| Component | Details |
|-----------|---------|
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

| Category | Technology |
|----------|------------|
| SIEM | Wazuh |
| Endpoint Monitoring | Sysmon |
| Operating System | Windows 11 |
| Server | Ubuntu Server |
| Attacker Machine | Kali Linux |
| Virtualization | VirtualBox |
| Scripting | PowerShell |
| Detection Framework | MITRE ATT&CK |
| Documentation | Markdown |
| Version Control | Git & GitHub |

---

# 🚀 Attack Simulation Toolkit

This repository includes a modular **PowerShell Attack Simulation Toolkit** designed to safely generate Windows security telemetry for SOC training.

Location:

```text
scripts/
```

Current Modules:

| Module | Description |
|---------|-------------|
| 01 | Encoded PowerShell Execution |
| 02 | Scheduled Task Persistence |
| 03 | Registry Run Key Persistence |
| 04 | Suspicious Process Execution |
| 05 | Windows Defender Status |
| Cleanup | Restore Lab Environment |

Toolkit Features:

- Modular design
- Reusable logging framework
- Safe simulations
- Automated cleanup
- Wazuh compatible
- Sysmon compatible

---

# 🛡️ MITRE ATT&CK Coverage

| Technique | ATT&CK ID |
|------------|-----------|
| PowerShell | T1059.001 |
| Scheduled Task | T1053.005 |
| Registry Run Keys | T1547.001 |
| Command Execution | T1059 |
| Windows Defender Discovery | Discovery |

> More ATT&CK techniques will be added as the project evolves.

---

# 📖 Case Studies

| # | Status | Topic |
|---|--------|-------|
| 01 | ✅ Completed | Nmap Reconnaissance |
| 02 | 🚧 In Progress | PowerShell Execution |
| 03 | ⏳ Planned | Registry Persistence |
| 04 | ⏳ Planned | LOLBins |
| 05 | ⏳ Planned | Credential Access |
| 06 | ⏳ Planned | Malware Simulation |
| 07 | ⏳ Planned | Detection Engineering |

---

# 🎯 Skills Demonstrated

- Security Operations Center (SOC)
- SIEM Administration
- Threat Detection
- Windows Event Analysis
- Sysmon
- Threat Hunting
- Detection Engineering
- Incident Response
- MITRE ATT&CK
- Windows Security
- Linux Administration
- PowerShell Automation
- Git & GitHub
- Technical Documentation

---

# 📂 Repository Structure

```text
Enterprise-SOC-Home-Lab/
│
├── architecture/
├── assets/
├── attack-scenarios/
├── case-studies/
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

# 📚 Documentation

Project documentation is available in the **docs/** directory.

Included documents:

- Project Bible
- Project Status
- Development Log
- Interview Notes
- Resources
- Decision Log
- Baseline Setup

---

# 📈 Current Progress

## ✅ Completed

- Enterprise SOC lab deployed
- Wazuh Manager configured
- Windows 11 Agent enrolled
- Sysmon integrated
- Threat Hunting verified
- Attack Simulation Toolkit created
- Logging framework implemented
- Cleanup automation implemented
- Case Study 01 completed
- Case Study 02 in progress

---

## 🚧 Currently Working On

- Detection Engineering
- Sigma Rules
- Incident Response Reports
- Wazuh Dashboards
- Additional Attack Simulations

---

# 🛣️ Roadmap

- [x] Project Planning
- [x] Virtual Lab Setup
- [x] Wazuh Installation
- [x] Windows Agent Deployment
- [x] Sysmon Integration
- [x] Attack Simulation Toolkit
- [ ] Detection Engineering
- [ ] Sigma Rules
- [ ] Incident Reports
- [ ] Threat Hunting Playbooks
- [ ] Dashboard Customization
- [ ] Final Portfolio Polish

---

# 🔮 Future Enhancements

- Active Directory Lab
- Microsoft Sentinel Integration
- Zeek
- Suricata
- Elastic Stack
- SOAR Automation
- Threat Intelligence Integration
- Docker Deployment
- Cloud SOC (Azure)

---

# 👨‍💻 Author

**Priyanshu Raj**

Aspiring SOC Analyst | Cybersecurity Enthusiast

**GitHub:**  
https://github.com/Priyanshuraj223

**LinkedIn:**  
https://www.linkedin.com/in/priyanshuraj223

---

# 📄 License

This project is licensed under the **MIT License**.

---

> **Disclaimer**
>
> This project is intended solely for educational purposes and authorized security testing within a controlled lab environment. Do not use these techniques on systems you do not own or have explicit permission to test.