@echo off
setlocal
chcp 65001 >nul
cd /d "%~dp0"
echo Starting private project bootstrap...
powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%~dp0scripts\bootstrap-private-project.ps1"
set "EXITCODE=%ERRORLEVEL%"
if not "%EXITCODE%"=="0" (
  echo.
  echo Bootstrap stopped with error code %EXITCODE%.
  pause
  exit /b %EXITCODE%
)
echo.
echo Project bootstrap completed successfully.
pause
exit /b 0
