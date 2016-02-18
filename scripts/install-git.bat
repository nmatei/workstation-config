@echo off

cd /d "%~dp0"
set "CURRENT_DIR=%cd%"
echo CURRENT_DIR='%CURRENT_DIR%'
set "GIT_HOME_TMP=C:\Program Files\Git"

rem ========================================
if not "%GIT_HOME%" == "" goto hasApp
echo  ==============================
echo ^| installing and setup git   ^|
echo  ==============================
echo please wait...

cd "%CURRENT_DIR%\..\installers"

if defined ProgramFiles(x86) (
    @echo installing git for 64-bit
    Git-2.7.1.2-64-bit.exe /SILENT
) else (
    @echo installing git for 32-bit
    Git-2.7.1.2-32-bit.exe /SILENT
)

setx /M GIT_HOME "%GIT_HOME_TMP%"
set "GIT_HOME=%GIT_HOME_TMP%"
echo adding: GIT_HOME=%GIT_HOME_TMP%

rem echo adding: PATH="%%PATH%%;%%GIT_HOME%%\bin"
rem setx /M PATH "%PATH%;%%GIT_HOME%%\bin"

goto done

:hasApp
echo [git] already installed

:done
echo GIT_HOME=%GIT_HOME%
echo ==============================
