<# TODO install from local network all this apps #>

Import-Module BitsTransfer

Start-BitsTransfer -DisplayName "Notepad++ Installer" -Source https://notepad-plus-plus.org/repository/6.x/6.8.8/npp.6.8.8.Installer.exe -Destination npp.6.8.8.Installer.exe

Start-BitsTransfer -DisplayName "Tomcat" -Source http://mirrors.m247.ro/apache/tomcat/tomcat-8/v8.0.30/bin/apache-tomcat-8.0.30.zip -Destination apache-tomcat-8.0.30.zip

Start-BitsTransfer -DisplayName "Maven" -Source http://mirrors.m247.ro/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.zip -Destination apache-maven-3.3.9-bin.zip

Start-BitsTransfer -DisplayName "ideaIU" -Source https://d1opms6zj7jotq.cloudfront.net/idea/ideaIU-15.0.3.exe -Destination ideaIU-15.0.3.exe

Start-BitsTransfer -DisplayName "postgresql" -Source http://get.enterprisedb.com/postgresql/postgresql-9.5.0-1-windows-x64.exe -Destination postgresql-9.5.0-1-windows-x64.exe

Start-BitsTransfer -DisplayName "Java" -Source http://download.oracle.com/otn-pub/java/jdk/8u73-b02/jdk-8u73-windows-x64.exe?AuthParam=1455054583_f5662834fec889424f68f9308f5a3674 -Destination jdk-8u73-windows-x64-test-download.exe

<#
Start-BitsTransfer -DisplayName "Git Installer" -Source https://github.com/git-for-windows/git/releases/download/v2.7.1.windows.2/Git-2.7.1.2-64-bit.exe -Destination Git-2.7.1.2-64-bit-test-download.exe
#>