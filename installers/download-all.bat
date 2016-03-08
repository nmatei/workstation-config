cd /d "%~dp0"
set "CURRENT_DIR=%cd%"
echo CURRENT_DIR='%CURRENT_DIR%'

set "TOMCAT_VERSION=8.0.32"
set "M2_VERSION=3.3.9"

if not exist "jdk-8u73-windows-x64.exe" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-app.ps1'" jdk-8u73-windows-x64.exe
)
if not exist "jdk-8u73-windows-i586.exe" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-app.ps1'" jdk-8u73-windows-i586.exe
)
if not exist "Git-2.7.2-64-bit.exe" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-app.ps1'" Git-2.7.2-64-bit.exe
)
if not exist "Git-2.7.2-32-bit.exe" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-app.ps1'" Git-2.7.2-32-bit.exe
)
if not exist "npp.6.8.8.Installer.exe" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-source.ps1'" npp.6.8.8.Installer.exe https://notepad-plus-plus.org/repository/6.x/6.8.8
)
if not exist "apache-maven-%M2_VERSION%-bin.zip" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-source.ps1'" apache-maven-%M2_VERSION%-bin.zip http://mirrors.m247.ro/apache/maven/maven-3/3.3.9/binaries
)
if not exist "apache-tomcat-%TOMCAT_VERSION%.zip" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\download-source.ps1'" apache-tomcat-%TOMCAT_VERSION%.zip http://mirrors.hostingromania.ro/apache.org/tomcat/tomcat-8/v8.0.32/bin
)

pause
