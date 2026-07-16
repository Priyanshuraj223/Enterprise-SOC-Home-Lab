# Case Study 01 - Nmap Reconnaissance Detection

## Executive Summary

This case study demonstrates the detection and investigation of network reconnaissance activity in a home SOC lab using Wazuh SIEM and Sysmon.

An Nmap scan was launched from a Kali Linux attacker machine against a Windows 11 endpoint monitored by the Wazuh agent. Although Windows Firewall filtered the incoming probes, the endpoint continued generating telemetry that was successfully collected and analyzed by Wazuh.

---

## Lab Environment

| Component | IP Address |
|-----------|------------|
| Kali Linux (Attacker) | 192.168.0.6 |
| Wazuh Manager | 192.168.0.5 |
| Windows 11 Endpoint | 192.168.0.4 |

---

## Attack Overview

**Attack Type**

Network Reconnaissance

**Tool Used**

- Nmap 7.99

Command executed:

```bash
nmap -A 192.168.0.4
```

---

## Detection Summary

Platform:

- Wazuh 4.14.6
- Sysmon v15.21
- Windows 11

Relevant detections included:

- Sysmon process monitoring
- Windows event monitoring
- Rule ID 92213
- MITRE ATT&CK mapping

---

## Investigation Outcome

The endpoint remained protected by Windows Firewall, causing all scanned TCP ports to appear filtered.

The reconnaissance activity did not expose any services, demonstrating effective host-based firewall protection.

The SIEM successfully collected endpoint telemetry throughout the activity.

---

## Evidence

See the screenshots folder.

- 01_lab_topology.png
- 02_nmap_scan.png
- 03_wazuh_events.png
- 04_event_details.png

---

## Skills Demonstrated

- Wazuh SIEM
- Sysmon
- Threat Hunting
- Nmap Reconnaissance
- Windows Event Analysis
- MITRE ATT&CK Mapping
- Security Investigation