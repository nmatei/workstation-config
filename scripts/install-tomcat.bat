@echo off

set "PROGS_DIR=C:\Progs"

cd /d "%~dp0"
set "CURRENT_DIR=%cd%"
echo CURRENT_DIR='%CURRENT_DIR%'
set "TOMCAT_VERSION=8.0.32"
set "CATALINA_HOME_TMP=%PROGS_DIR%\apache-tomcat-%TOMCAT_VERSION%"

rem ========================================
if exist "%CATALINA_HOME_TMP%\bin\catalina.bat" goto hasApp
echo  ==============================
echo ^| install and setup tomcat   ^|
echo  ==============================
cd "%CURRENT_DIR%\..\installers"

if not exist "apache-tomcat-%TOMCAT_VERSION%.zip" (
    PowerShell.exe -NoProfile -ExecutionPolicy Bypass -Command "& '%CURRENT_DIR%\..\installers\download-source.ps1'" apache-tomcat-%TOMCAT_VERSION%.zip http://mirrors.hostingromania.ro/apache.org/tomcat/tomcat-8/v8.0.32/bin
)

echo unziping apache-tomcat-%TOMCAT_VERSION%.zip...
"%JAVA_HOME%\bin\jar" xf apache-tomcat-%TOMCAT_VERSION%.zip

rem move could not work if installer folder is on other drive (D: for example)
rem move apache-tomcat-%TOMCAT_VERSION% "%PROGS_DIR%/"

mkdir "%PROGS_DIR%\apache-tomcat-%TOMCAT_VERSION%"
echo copying apache-tomcat-%TOMCAT_VERSION%...
xcopy /HEQ apache-tomcat-%TOMCAT_VERSION% "%PROGS_DIR%\apache-tomcat-%TOMCAT_VERSION%"
echo removing apache-tomcat-%TOMCAT_VERSION%...
rmdir /S /Q apache-tomcat-%TOMCAT_VERSION%

cd ..

setx /M CATALINA_HOME "%CATALINA_HOME_TMP%"
set "CATALINA_HOME=%CATALINA_HOME_TMP%"
echo adding: CATALINA_HOME=%CATALINA_HOME_TMP%

goto done

:hasApp
echo [tomcat] already installed

:done
echo CATALINA_HOME=%CATALINA_HOME%
echo ==============================