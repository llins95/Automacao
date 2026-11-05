@echo off
setlocal
cd /d "%~dp0"
powershell.exe -NoLogo -NoProfile -ExecutionPolicy Bypass -File "%~dp0Automacao.ps1" %*
set "EXIT_CODE=%ERRORLEVEL%"
if not "%EXIT_CODE%"=="0" (
    echo.
    echo O Automacao encerrou com erro. Consulte os logs em %%ProgramData%%\Automacao\Logs.
    pause
)
exit /b %EXIT_CODE%
