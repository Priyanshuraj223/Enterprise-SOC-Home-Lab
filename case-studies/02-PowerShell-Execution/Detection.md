
# Detection Analysis

## Alert Information

| Field | Value |
|------|-------|
| Rule ID | 92057 |
| Severity | 12 |
| Source | Windows 11 Endpoint |
| Detection Engine | Wazuh |

---

## Detection Description

Wazuh detected that PowerShell executed another PowerShell process using the **-EncodedCommand** parameter.

The use of Base64-encoded commands is frequently observed in malware, offensive security frameworks, and post-exploitation activity because it obscures the original command from casual inspection.

---

## Why It Matters

Attackers commonly use encoded PowerShell commands to:

- Hide malicious scripts
- Download malware
- Execute payloads in memory
- Bypass simple detection mechanisms

Although the payload in this lab was benign, the execution technique closely resembles real-world attacker behavior.

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| PowerShell | T1059.001 |

---

## Investigation Notes

The alert confirmed:

- Encoded command execution
- Successful telemetry collection by Sysmon
- Successful ingestion into Wazuh
- Detection by built-in Wazuh rules

No malicious payload was executed during this simulation.