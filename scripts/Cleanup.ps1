. "$PSScriptRoot\common\Logger.ps1"

Write-Step "Cleaning Enterprise SOC Home Lab"

# Remove Scheduled Task
try {
    schtasks /delete /tn "SOC-Lab-Persistence" /f | Out-Null
    Write-Success "Scheduled Task removed."
}
catch {
    Write-WarningMsg "Scheduled Task not found."
}

# Remove Registry Run Key
try {
    Remove-ItemProperty `
        -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" `
        -Name "SOCLabPersistence" `
        -ErrorAction Stop

    Write-Success "Registry Run Key removed."
}
catch {
    Write-WarningMsg "Registry Run Key not found."
}

# Remove Lab Folder
try {
    Remove-Item "C:\SOC-Lab" -Recurse -Force -ErrorAction Stop
    Write-Success "SOC-Lab folder removed."
}
catch {
    Write-WarningMsg "SOC-Lab folder not found."
}

Write-Step "Cleanup Complete"