. "$PSScriptRoot\..\common\Logger.ps1"

Write-Step "Windows Defender Status"

try {

    $status = Get-MpComputerStatus

    Write-Host ""
    Write-Host "Antivirus Enabled : $($status.AntivirusEnabled)"
    Write-Host "Real-Time Protection : $($status.RealTimeProtectionEnabled)"
    Write-Host "AM Service Enabled : $($status.AMServiceEnabled)"
    Write-Host ""

    Write-Success "Defender status collected."

}
catch {

    Write-ErrorMsg $_.Exception.Message

}