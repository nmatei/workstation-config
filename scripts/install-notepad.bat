@echo off

cd /d "%~dp0"
set "CURRENT_DIR=%cd%"
echo CURRENT_DIR='%CURRENT_DIR%'

echo  ==============================
echo ^| installing Notepad++       ^|
echo  ==============================
echo please wait...

cd "%CURRENT_DIR%\..\installers"

npp.6.8.8.Installer.exe /S

echo ==============================