. "$PSScriptRoot\..\common\Logger.ps1"

Write-Step "Registry Run Key Persistence"

$Key = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$Name = "SOCLabPersistence"
$Value = "notepad.exe"

try {
    New-ItemProperty `
        -Path $Key `
        -Name $Name `
        -Value $Value `
        -PropertyType String `
        -Force | Out-Null

    Write-Success "Registry Run key created."
}
catch {
    Write-ErrorMsg $_.Exception.Message
}