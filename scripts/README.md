# Attack Simulation Toolkit

A modular PowerShell toolkit for generating Windows telemetry in a controlled lab environment. The toolkit is designed for blue-team training, detection engineering, and Wazuh SIEM testing.

## Features

- Modular attack simulations
- Safe execution for home labs
- MITRE ATT&CK aligned
- Cleanup script to restore the environment
- Wazuh + Sysmon compatible

## Modules

| Module | Technique | MITRE ATT&CK |
|---------|-----------|--------------|
| 01 | Encoded PowerShell | T1059.001 |
| 02 | Scheduled Task Persistence | T1053.005 |
| 03 | Registry Run Key Persistence | T1547.001 |
| 04 | Process Execution | T1059 |
| 05 | Defender Status Check | Discovery |

## Usage

Run all simulations:

```powershell
.\Run-All.ps1
```

Restore the lab:

```powershell
.\Cleanup.ps1
```

## Project Structure

```text
scripts/
├── Run-All.ps1
├── Cleanup.ps1
├── common/
├── modules/
├── docs/
└── logs/
```

## Disclaimer

This toolkit is intended **only for authorized testing in a personal lab environment**. Do not execute it on systems you do not own or have permission to test.