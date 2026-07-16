# Detection Analysis

## Data Sources

- Windows Event Logs
- Sysmon Operational Logs
- Wazuh Agent
- Wazuh Manager

---

## Detection Rules

Example Rule

Rule ID:

92213

Description:

Executable file dropped in folder commonly used by malware

Severity:

15

---

## Investigation

The analyst searched:

```text
agent.name:"Priyanshu-PC"
```

and reviewed endpoint telemetry generated during the attack window.

The investigation confirmed that Wazuh successfully received and indexed endpoint events while Windows Firewall prevented inbound connections from the attacker.

---

## Conclusion

The reconnaissance activity was successfully executed from the attacker machine.

Although the scan did not discover open services because of Windows Firewall filtering, the SOC platform demonstrated successful log collection, event ingestion, and security monitoring.

This validates the functionality of the Wazuh + Sysmon monitoring pipeline.