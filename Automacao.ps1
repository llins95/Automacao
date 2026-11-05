#requires -Version 5.1
<#
.SYNOPSIS
    Ponto de entrada do Automacao.
.DESCRIPTION
    Inicializa verificações básicas e carrega a interface WPF quando disponível.
#>

[CmdletBinding()]
param(
    [switch]$NoAdminCheck
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$script:AppName = 'Automacao'
$script:AppRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$script:LogRoot = Join-Path $env:ProgramData 'Automacao\Logs'

try {
    if (-not (Test-Path -LiteralPath $script:LogRoot)) {
        New-Item -ItemType Directory -Path $script:LogRoot -Force | Out-Null
    }

    $logFile = Join-Path $script:LogRoot ("Automacao_{0:yyyyMMdd_HHmmss}.log" -f (Get-Date))
    Start-Transcript -Path $logFile -Append | Out-Null

    Write-Host "=== $script:AppName ===" -ForegroundColor Cyan
    Write-Host "Windows PowerShell: $($PSVersionTable.PSVersion)"
    Write-Host "Sistema: $([Environment]::OSVersion.VersionString)"
    Write-Host "Arquitetura do processo: $([Environment]::Is64BitProcess)"

    if (-not [Environment]::Is64BitOperatingSystem) {
        throw 'O Automacao requer Windows de 64 bits.'
    }

    $appsConfig = Join-Path $script:AppRoot 'Config\Apps.json'
    if (-not (Test-Path -LiteralPath $appsConfig)) {
        throw "Arquivo de configuração não encontrado: $appsConfig"
    }

    $null = Get-Content -LiteralPath $appsConfig -Raw | ConvertFrom-Json

    $uiEntry = Join-Path $script:AppRoot 'src\UI\MainWindow.ps1'
    if (Test-Path -LiteralPath $uiEntry) {
        . $uiEntry
        Start-AutomacaoUI
    }
    else {
        Write-Warning 'A interface WPF ainda está em implementação.'
        Write-Host 'A estrutura inicial foi carregada corretamente.'
    }
}
catch {
    Write-Error ("Falha ao iniciar o Automacao: {0}" -f $_.Exception.Message)
    exit 1
}
finally {
    try { Stop-Transcript | Out-Null } catch {}
}
