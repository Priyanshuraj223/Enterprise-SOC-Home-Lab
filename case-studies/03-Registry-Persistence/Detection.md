# Detection Analysis

## Technique

Registry Run Key Persistence

---

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

## Data

```
notepad.exe
```

---

## Detection Summary

The PowerShell script modified the Windows Registry by creating a new Run key.

Registry Run keys are commonly abused by attackers to achieve persistence because Windows automatically executes these entries during user logon.

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| Registry Run Keys / Startup Folder | T1547.001 |

---

## Investigation Notes

Analysts should verify:

- Registry path modified
- Registry value name
- Registry data
- Parent process
- User account
- Time of modification

Any unexpected Run key should be investigated.