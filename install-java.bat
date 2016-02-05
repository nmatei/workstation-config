@echo off

cd /d "%~dp0"
set "CURRENT_DIR=%cd%"
echo CURRENT_DIR='%CURRENT_DIR%'

rem ========================================
if not "%JAVA_HOME%" == "" goto hasApp
echo  ==============================
echo ^| installing and setup java  ^|
echo  ==============================
echo please wait...

cd "%CURRENT_DIR%\installers"
jdk-8u72-windows-x64.exe /quiet

setx /M JAVA_HOME "C:\Program Files\Java\jdk1.8.0_72"
echo adding: JAVA_HOME=%JAVA_HOME%

echo adding: PATH="%%PATH%%;%%JAVA_HOME%%\bin"
rem setx /M PATH "%PATH%;%%JAVA_HOME%%\bin"

goto done

:hasApp
echo [java] already installed

:done
echo JAVA_HOME=%JAVA_HOME%
echo --