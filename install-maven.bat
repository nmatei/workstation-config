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
cd "%CURRENT_DIR%\installers"

"%JAVA_HOME%\bin\jar" xf apache-maven-%M2_VERSION%-bin.zip
move apache-maven-%M2_VERSION% "%PROGS_DIR%/"

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
echo --