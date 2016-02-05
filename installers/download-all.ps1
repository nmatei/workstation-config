Import-Module BitsTransfer

<#
Start-BitsTransfer -DisplayName "Notepad++ Installer" -Source https://notepad-plus-plus.org/repository/6.x/6.8.8/npp.6.8.8.Installer.exe -Destination npp.6.8.8.Installer.exe
#>

Start-BitsTransfer -DisplayName "Maven" -Source http://mirrors.m247.ro/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip -Destination apache-maven-3.3.9-bin.zip

<#
Start-BitsTransfer -DisplayName "Git Installer" -Source https://git-scm.com/download/win -Destination Git-1.9.5-preview20150319.exe
#>