. "$PSScriptRoot\..\common\Logger.ps1"

Write-Step "Suspicious Process Execution"

try {

    Start-Process cmd.exe "/c echo SOC Lab Process Execution"

    Write-Success "cmd.exe executed successfully."

}
catch {

    Write-ErrorMsg $_.Exception.Message

}