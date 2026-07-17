# Indicators of Compromise (IOCs)

## Registry Path

```
HKCU\Software\Microsoft\Windows\CurrentVersion\Run
```

---

## Registry Value

```
SOCLabPersistence
```

---

## Executable

```
notepad.exe
```

---

## PowerShell Cmdlet

```
New-ItemProperty
```

---

## MITRE ATT&CK

```
T1547.001
```

---

## Observed Behavior

- Registry modification
- Persistence established
- Windows Registry updated
- Telemetry collected by Sysmon
- Events forwarded to Wazuh

---

## Risk Assessment

Registry Run keys are a well-known persistence mechanism used by malware.

Although this lab uses **notepad.exe** for demonstration, attackers often configure these keys to launch malicious executables or scripts.