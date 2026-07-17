# Detection Analysis

## Technique

Suspicious Process Execution

---

## Executed Process

```
cmd.exe
```

---

## Parent Process

```
powershell.exe
```

---

## Detection Summary

The PowerShell script launched **cmd.exe** using the `Start-Process` cmdlet.

Command shell execution is commonly associated with attacker activity and should always be reviewed in context.

---

## MITRE ATT&CK

| Technique | ID |
|-----------|----|
| Windows Command Shell | T1059.003 |

---

## Investigation Notes

SOC analysts should verify:

- Parent process
- Child process
- Command-line arguments
- User account
- Timestamp
- Related events

Command shell execution alone is not malicious but becomes suspicious depending on the context.