# Enterprise SOC Home Lab Architecture

## Overview

This document describes the architecture of the Enterprise SOC Home Lab used to simulate real-world cyber attacks, collect endpoint telemetry, and perform security monitoring using Wazuh SIEM.

The lab is designed to demonstrate SOC Analyst skills including attack simulation, log collection, detection engineering, incident investigation, and MITRE ATT&CK mapping.

---

# Lab Components

| Component | Purpose |
|-----------|---------|
| Windows 11 | Monitored endpoint for attack simulations |
| Sysmon | Generates detailed Windows event logs |
| Wazuh Agent | Collects endpoint telemetry |
| Wazuh Manager (Ubuntu Server) | Centralized log collection, analysis, and alerting |
| Kali Linux | Attack simulation machine |
| VirtualBox | Hosts all virtual machines |

---

# Network Topology

```
                +----------------------+
                |     Kali Linux       |
                |   192.168.0.6        |
                +----------+-----------+
                           |
                           |
                 Attack Simulation
                           |
                           v

+-------------------------------------------------------------+
|                     Windows 11 Endpoint                      |
|                     192.168.0.4                             |
|-------------------------------------------------------------|
| Sysmon                                                      |
| Wazuh Agent                                                 |
| PowerShell                                                  |
| Registry                                                    |
| Event Logs                                                  |
+----------------------------+--------------------------------+
                             |
                       Security Events
                             |
                             v

+-------------------------------------------------------------+
|               Ubuntu Server (Wazuh Manager)                 |
|                    192.168.0.5                              |
|-------------------------------------------------------------|
| Wazuh Manager                                               |
| Filebeat                                                    |
| Indexer                                                     |
| Dashboard                                                   |
+-------------------------------------------------------------+
```

---

# Attack Flow

1. Kali Linux or PowerShell scripts initiate attack simulations.
2. Windows 11 executes the simulated activity.
3. Sysmon records detailed endpoint telemetry.
4. Wazuh Agent forwards logs to the Wazuh Manager.
5. Wazuh analyzes events and generates alerts.
6. The SOC analyst investigates alerts using dashboards, detection rules, and incident reports.

---

# Implemented Attack Simulations

- Nmap Reconnaissance
- Encoded PowerShell Execution
- Registry Run Key Persistence
- Suspicious Process Execution

---

# Detection Technologies

- Wazuh SIEM
- Sysmon
- Windows Event Logs
- Sigma Rules
- MITRE ATT&CK Mapping

---

# Skills Demonstrated

- SIEM Deployment
- Endpoint Monitoring
- Threat Detection
- Detection Engineering
- Incident Response
- Log Analysis
- Windows Security
- Linux Administration
- MITRE ATT&CK Framework