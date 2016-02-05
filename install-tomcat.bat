@echo off

set "PROGS_DIR=C:\Progs"

cd /d "%~dp0"
set "CURRENT_DIR=%cd%"
echo CURRENT_DIR='%CURRENT_DIR%'
set "TOMCAT_VERSION=8.0.20"
set "CATALINA_HOME_TMP=%PROGS_DIR%\apache-tomcat-%TOMCAT_VERSION%"

rem ========================================
if exist "%CATALINA_HOME_TMP%\bin\catalina.bat" goto hasApp
echo  ==============================
echo ^| install and setup tomcat   ^|
echo  ==============================
cd "%CURRENT_DIR%\installers"

"%JAVA_HOME%\bin\jar" xf apache-tomcat-%TOMCAT_VERSION%.zip
move apache-tomcat-%TOMCAT_VERSION% "%PROGS_DIR%/"

cd ..

setx /M CATALINA_HOME "%CATALINA_HOME_TMP%"
set "CATALINA_HOME=%CATALINA_HOME_TMP%"
echo adding: CATALINA_HOME=%CATALINA_HOME_TMP%

goto done

:hasApp
echo [tomcat] already installed

:done
echo CATALINA_HOME=%CATALINA_HOME%
echo --