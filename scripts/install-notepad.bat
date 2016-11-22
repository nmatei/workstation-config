@echo off

cd /d "%~dp0"
set "CURRENT_DIR=%cd%"
echo CURRENT_DIR='%CURRENT_DIR%'

if defined ProgramFiles(x86) (
    if exist "c:\Program Files (x86)\Notepad++\notepad++.exe" goto hasApp
) else (
    if exist "c:\Program Files\Notepad++\notepad++.exe" goto hasApp
)

echo  ==============================
echo ^| installing Notepad++       ^|
echo  ==============================
echo please wait...

cd "%CURRENT_DIR%\..\installers"

if not exist "npp.7.2.1.Installer.exe" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\..\installers\download-source.ps1'" npp.7.2.1.Installer.exe https://notepad-plus-plus.org/repository/7.x/7.2.1
)

npp.7.2.1.Installer.exe /S

goto done

:hasApp
echo [notepad++] already installed

:done
echo ==============================
