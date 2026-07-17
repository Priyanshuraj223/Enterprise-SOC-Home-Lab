# Case Study 02 – Encoded PowerShell Execution

## Objective

The objective of this case study was to simulate an attacker executing a Base64-encoded PowerShell command and verify whether Wazuh SIEM, together with Sysmon, could detect and generate a security alert.

This technique is commonly used by attackers to obfuscate malicious PowerShell commands and evade simple detection mechanisms.

---

## Lab Environment

| Component | Details |
|----------|---------|
| SIEM | Wazuh 4.14.x |
| Endpoint | Windows 11 |
| Monitoring | Sysmon + Wazuh Agent |
| Attacker | Local PowerShell |
| Framework | MITRE ATT&CK |

---

## Attack Performed

The following command was executed on the Windows endpoint:

```powershell
powershell.exe -EncodedCommand VwByAGkAdABlAC0ASABvAHMAdAAgACIASABlAGwAbABvACAAUwBPAEMAIgA=
```

The encoded payload simply prints:

```
Hello SOC
```

Although harmless, the execution method is commonly associated with malicious PowerShell activity.

---

## Detection Result

The execution generated an alert in Wazuh.

**Primary Detection**

- Rule ID: **92057**
- Alert Level: **12**
- Description:
  - *Powershell.exe spawned a powershell process which executed a base64 encoded command.*

---

## MITRE ATT&CK Mapping

| Technique | ID |
|-----------|----|
| Command and Scripting Interpreter: PowerShell | T1059.001 |

---

## Outcome

The attack was successfully detected by Wazuh.

This validates that the SOC lab is capable of identifying suspicious PowerShell execution techniques using Sysmon telemetry and Wazuh detection rules.

---

## Skills Demonstrated

- PowerShell
- Windows Event Analysis
- Sysmon
- Wazuh SIEM
- Threat Detection
- MITRE ATT&CK Mapping
- Security Monitoring

---

## Screenshots

Store screenshots in:

```
screenshots/
```

Recommended screenshots:

- Encoded PowerShell command
- Wazuh alert
- Alert details