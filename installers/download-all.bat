@echo off

echo Downloading Applications:

cd /d "%~dp0"
set "CURRENT_DIR=%cd%"
echo CURRENT_DIR='%CURRENT_DIR%'
call %CURRENT_DIR%\..\scripts\versions.bat

if not exist "jdk-8u73-windows-x64.exe" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-app.ps1'" jdk-8u73-windows-x64.exe
)
if not exist "jdk-8u73-windows-i586.exe" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-app.ps1'" jdk-8u73-windows-i586.exe
)
if not exist "Git-%GIT_VERSION%-64-bit.exe" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-app.ps1'" Git-%GIT_VERSION%-64-bit.exe
)
if not exist "Git-%GIT_VERSION%-32-bit.exe" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-app.ps1'" Git-%GIT_VERSION%-32-bit.exe
)

if not exist "npp.%NOTEPAD_VERSION%.Installer.exe" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-source.ps1'" npp.%NOTEPAD_VERSION%.Installer.exe https://notepad-plus-plus.org/repository/7.x/%NOTEPAD_VERSION%
)
if not exist "apache-maven-%M2_VERSION%-bin.zip" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-source.ps1'" apache-maven-%M2_VERSION%-bin.zip http://mirrors.m247.ro/apache/maven/maven-3/%M2_VERSION%/binaries
)
if not exist "apache-tomcat-%TOMCAT_VERSION%.zip" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-source.ps1'" apache-tomcat-%TOMCAT_VERSION%.zip http://mirror.evowise.com/apache/tomcat/tomcat-8/v%TOMCAT_VERSION%/bin
)
if not exist "ideaIU-%IDEA_VERSION%.exe" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-source.ps1'" ideaIU-%IDEA_VERSION%.exe https://download.jetbrains.com/idea
)
if not exist "pgadmin3-1.22.2.zip" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-source.ps1'" pgadmin3-1.22.2.zip https://ftp.postgresql.org/pub/pgadmin3/release/v1.22.2/win32/pgadmin3-1.22.2.zip
)

rem =========
rem    PHP
rem =========
if not exist "%XAMPP_EXE%" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-source.ps1'" %XAMPP_EXE% https://www.apachefriends.org/xampp-files/%XAMPP_VERSION%
)
if not exist "wordpress-%WORDPRESS_VERSION%.zip" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-source.ps1'" wordpress-%WORDPRESS_VERSION%.zip https://wordpress.org
)
rem =========

rem TODO https://intellij-support.jetbrains.com/hc/en-us/articles/206827139-Silent-or-Unattended-installation-on-Windows

:done

echo  ================================================
echo             Applications Downloaded
echo  ================================================
echo ^| http://www.fasttrackit.org/
echo  ================================================

echo Press any key to exit.

pause
