@echo off

cd /d "%~dp0"
set "CURRENT_DIR=%cd%"
echo CURRENT_DIR='%CURRENT_DIR%'

rem ========================================
if not "%GIT_HOME%" == "" goto hasApp
echo  ==============================
echo ^| installing and setup git   ^|
echo  ==============================
echo please wait...

cd "%CURRENT_DIR%\installers"
Git-2.5.0-64-bit.exe /SILENT

setx /M GIT_HOME "C:\Program Files\Git"
echo adding: GIT_HOME=%GIT_HOME%

echo adding: PATH="%%PATH%%;%%GIT_HOME%%\bin"
rem setx /M PATH "%PATH%;%%GIT_HOME%%\bin"

goto done

:hasApp
echo [git] already installed

:done
echo GIT_HOME=%GIT_HOME%
echo --
