# =====================================================
# Enterprise SOC Home Lab
# Attack Simulation Toolkit
# =====================================================

. "$PSScriptRoot\common\Logger.ps1"

Write-Step "Enterprise SOC Home Lab Attack Simulation Toolkit"

$Modules = @(
    ".\modules\01_EncodedPowerShell.ps1",
    ".\modules\02_Persistence.ps1",
    ".\modules\03_RegistryRunKey.ps1",
    ".\modules\04_ProcessExecution.ps1",
    ".\modules\05_DefenderCheck.ps1"
)

foreach ($Module in $Modules) {

    Write-Step "Running $Module"

    try {
        & $Module
        Write-Success "$Module completed."
    }
    catch {
        Write-ErrorMsg $_
    }

    Start-Sleep 5

}

Write-Step "Simulation Finished"