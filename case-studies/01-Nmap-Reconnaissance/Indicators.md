# Indicators

## Hosts

Attacker

- Kali Linux
- IP: 192.168.0.6

Target

- Windows 11
- IP: 192.168.0.4

SIEM

- Wazuh Manager
- IP: 192.168.0.5

---

## Tool

Nmap 7.99

Command:

```bash
nmap -A 192.168.0.4
```

---

## MITRE ATT&CK

| Tactic | Technique |
|---------|-----------|
| Reconnaissance | Active Scanning (T1595) |

---

## Detection

- Wazuh SIEM
- Sysmon
- Windows Security Events