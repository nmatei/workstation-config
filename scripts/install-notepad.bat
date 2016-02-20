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

npp.6.8.8.Installer.exe /S

goto done

:hasApp
echo [notepad++] already installed

:done
echo ==============================