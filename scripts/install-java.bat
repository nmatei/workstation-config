@echo off

cd /d "%~dp0"
set "CURRENT_DIR=%cd%"
echo CURRENT_DIR='%CURRENT_DIR%'
set "JAVA_HOME_TMP=C:\Program Files\Java\jdk1.8.0_73"

rem ========================================
if not "%JAVA_HOME%" == "" goto hasApp
echo  ==============================
echo ^| installing and setup java  ^|
echo  ==============================
echo please wait...

cd "%CURRENT_DIR%\..\installers"

if defined ProgramFiles(x86) (
    if not exist "jdk-8u73-windows-x64.exe" (
        PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\..\installers\download-app.ps1'" jdk-8u73-windows-x64.exe
    )
    @echo installing java for 64-bit
    jdk-8u73-windows-x64.exe /quiet
) else (
    if not exist "jdk-8u73-windows-i586.exe" (
        PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\..\installers\download-app.ps1'" jdk-8u73-windows-i586.exe
    )
    @echo installing java for 32-bit
    jdk-8u73-windows-i586.exe /quiet
)

setx /M JAVA_HOME "%JAVA_HOME_TMP%"
set "JAVA_HOME=%JAVA_HOME_TMP%"
echo adding: JAVA_HOME=%JAVA_HOME_TMP%

rem echo add: PATH="%%PATH%%;%%JAVA_HOME%%\bin"
rem setx /M PATH "%PATH%;%%JAVA_HOME%%\bin"

goto done

:hasApp
echo [java] already installed

:done
echo JAVA_HOME=%JAVA_HOME%
echo ==============================
