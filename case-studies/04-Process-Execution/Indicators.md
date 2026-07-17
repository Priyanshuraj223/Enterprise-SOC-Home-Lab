# Indicators of Compromise (IOCs)

## Parent Process

```
powershell.exe
```

---

## Child Process

```
cmd.exe
```

---

## Command Executed

```powershell
Start-Process cmd.exe "/c echo SOC Lab Process Execution"
```

---

## MITRE ATT&CK

```
T1059.003
```

---

## Observed Behavior

- Process creation
- Parent-child relationship established
- Sysmon event generated
- Wazuh telemetry collected

---

## Risk Assessment

Command shell execution is frequently observed during attacker operations.

Although this simulation executed a harmless command, analysts should investigate unexpected command interpreter activity.