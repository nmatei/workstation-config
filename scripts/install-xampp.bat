@echo off

cd /d "%~dp0"
set "CURRENT_DIR=%cd%"
echo CURRENT_DIR='%CURRENT_DIR%'
call %CURRENT_DIR%\versions.bat

if exist "c:\xampp\xampp-control.exe" goto hasApp

echo  ==============================
echo ^| installing XAMPP           ^|
echo  ==============================
echo please wait...

cd "%CURRENT_DIR%\..\installers"

if not exist "%XAMPP_EXE%" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\..\installers\download-source.ps1'" %XAMPP_EXE% https://www.apachefriends.org/xampp-files/7.1.6
)

%XAMPP_EXE% --unattendedmodeui none --mode qt  --launchapps 0 --disable-components xampp_webalizer,xampp_tomcat,xampp_mercury,xampp_filezilla

goto done

:hasApp
echo [XAMPP] already installed

:done
echo ==============================
