@echo off

set "PROGS_DIR=C:\Progs"

cd /d "%~dp0"
set "CURRENT_DIR=%cd%"
echo CURRENT_DIR='%CURRENT_DIR%'
set "M2_VERSION=3.3.9"
set "M2_HOME_TMP=%PROGS_DIR%\apache-maven-%M2_VERSION%"

rem ========================================
if not "%M2_HOME%" == "" goto hasApp
echo  ==============================
echo ^| install and setup maven    ^|
echo  ==============================
cd "%CURRENT_DIR%\..\installers"

if not exist "apache-maven-%M2_VERSION%-bin.zip" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\..\installers\download-source.ps1'" apache-maven-%M2_VERSION%-bin.zip http://mirrors.m247.ro/apache/maven/maven-3/3.3.9/binaries
)

echo unziping apache-maven-%M2_VERSION%-bin.zip...
"%JAVA_HOME%\bin\jar" xf apache-maven-%M2_VERSION%-bin.zip

rem move could not work if installer folder is on other drive (D: for example)
rem move apache-maven-%M2_VERSION% "%PROGS_DIR%/"

mkdir "%PROGS_DIR%\apache-maven-%M2_VERSION%"
echo copying apache-maven-%M2_VERSION%...
xcopy /HEQ apache-maven-%M2_VERSION% "%PROGS_DIR%\apache-maven-%M2_VERSION%"
echo removing apache-maven-%M2_VERSION%...
rmdir /S /Q apache-maven-%M2_VERSION%

cd ..

setx /M M2_HOME "%M2_HOME_TMP%"
set "M2_HOME=%M2_HOME_TMP%"
echo adding: M2_HOME=%M2_HOME_TMP%

rem echo adding: PATH="PATH;%%M2_HOME%%\bin"
rem setx /M PATH "%%PATH%%;%%M2_HOME%%\bin"

goto done

:hasApp
echo [maven] already installed

:done
echo M2_HOME=%M2_HOME%
echo ==============================