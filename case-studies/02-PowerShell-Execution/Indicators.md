# Indicators of Compromise (IOCs)

## Host

Windows 11 Endpoint

---

## Process

```
powershell.exe
```

---

## Suspicious Argument

```
-EncodedCommand
```

---

## Command Executed

```powershell
powershell.exe -EncodedCommand VwByAGkAdABlAC0ASABvAHMAdAAgACIASABlAGwAbABvACAAUwBPAEMAIgA=
```

---

## Detection Rule

```
92057
```

---

## MITRE ATT&CK

```
T1059.001
```

---

## Observed Behavior

- Encoded PowerShell execution
- Child PowerShell process created
- Alert generated in Wazuh
- Security telemetry collected through Sysmon

---

## Risk Assessment

Although this demonstration used a harmless payload, encoded PowerShell commands should always be investigated because they are commonly associated with malicious activity.