@echo off

cd /d "%~dp0"
set "CURRENT_DIR=%cd%"
echo CURRENT_DIR='%CURRENT_DIR%'
call %CURRENT_DIR%\versions.bat

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

if not exist "npp.%NOTEPAD_VERSION%.Installer.exe" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\..\installers\download-source.ps1'" npp.%NOTEPAD_VERSION%.Installer.exe https://notepad-plus-plus.org/repository/7.x/%NOTEPAD_VERSION%
)

npp.%NOTEPAD_VERSION%.Installer.exe /S

goto done

:hasApp
echo [notepad++] already installed

:done
echo ==============================
