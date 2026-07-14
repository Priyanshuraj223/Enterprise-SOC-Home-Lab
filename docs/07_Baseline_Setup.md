# Wazuh SOC Home Lab – Baseline Setup

## Overview

This document describes the initial working baseline of the Enterprise SOC Home Lab before attack simulations.

---

## Environment

| Component | Version |
|----------|---------|
| Wazuh | 4.14.6 |
| Virtualization | Oracle VirtualBox |
| Host OS | Windows 11 |
| Monitored Endpoint | Windows 11 |
| Attacker Machine | Kali Linux |
| SIEM | Wazuh Dashboard |
| Sysmon | v15.21 |
| Sysmon Configuration | SwiftOnSecurity |

---

## Completed Configuration

- Imported Wazuh 4.14.6 OVA
- Configured VirtualBox networking
- Accessed Wazuh Dashboard
- Enrolled Windows 11 endpoint
- Installed Wazuh Windows Agent
- Installed Sysmon v15.21
- Applied SwiftOnSecurity Sysmon configuration
- Configured Wazuh Agent to collect Sysmon Event Channel logs
- Verified active agent communication
- Verified Threat Hunting events
- Created VirtualBox baseline snapshot

---

## Working Components

- Wazuh Dashboard
- Wazuh Manager
- Wazuh Indexer
- Windows Agent
- Sysmon Logging
- Threat Hunting
- Security Alerts

---

## Baseline Snapshot

VirtualBox Snapshot:

```
Wazuh + Windows Agent + Sysmon
```

This snapshot represents the stable lab before attack simulations.

---

## Next Phase

The next phase focuses on attack simulations including:

- PowerShell
- Encoded PowerShell
- LOLBins
- Persistence
- Registry Changes
- Credential Access
- Sigma Rules
- Custom Wazuh Detection Rules
