# Usage Guide

## Requirements

- Windows 11
- PowerShell 5.1+
- Sysmon
- Wazuh Agent
- Wazuh Manager

## Execute

```powershell
.\Run-All.ps1
```

Wait approximately one minute for Wazuh to ingest the events.

## Cleanup

```powershell
.\Cleanup.ps1
```

## Expected Telemetry

- PowerShell execution
- Registry modifications
- Scheduled task creation
- Process creation
- Windows Defender status collection