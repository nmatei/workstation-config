@echo off

cd /d "%~dp0"

echo  ================================================
echo ^| This installer will try to install:
echo ^|   java/git/maven/tomcat
echo ^|     if any of them are not installed
echo ^| requirements for http://www.fasttrackit.org/
echo  ================================================

pause

echo ----

call install-java.bat
cd /d "%~dp0"

call install-git.bat
cd /d "%~dp0"

call install-maven.bat
cd /d "%~dp0"

call install-tomcat.bat
cd /d "%~dp0"

echo  ================================================
echo ^| http://www.fasttrackit.org/
echo  ================================================

echo Press any key to exit.
pause
