Write-Host ""
Write-Host "[Module 2] Scheduled Task Persistence" -ForegroundColor Cyan

$TaskName = "SOC-Lab-Persistence"
$ScriptPath = "C:\SOC-Lab\persist.ps1"

# Create working directory
New-Item -ItemType Directory -Path "C:\SOC-Lab" -Force | Out-Null

# Create harmless script
'Write-Output "SOC Lab Persistence Test"' | Out-File $ScriptPath -Encoding ascii

# Create Scheduled Task
schtasks /create `
    /tn $TaskName `
    /tr "powershell.exe -ExecutionPolicy Bypass -File $ScriptPath" `
    /sc onlogon `
    /f

Write-Host "Scheduled Task Created Successfully." -ForegroundColor Green