# Environment Setup

## Applications that will be installed

Make sure you have all applications inside [`installers/`](installers/) folder:

- [x] **Manually** download/add each installer in: [`installers/`](installers/)

or run [`installers/download-all.bat`](installers/download-all.bat), then manually download missing apps : *Java*, *Git*

- [ ] **Run** [`installers/download-all.bat`](installers/download-all.bat) (Temporary is not able to download all apps so use Manual download)
    
    Automatic download is working for:
        **Notepad++**, **Tomcat**, **Maven**, **ideaIU** and **postgresql**


### Applications

- [x] **Notepad++** [`installers/npp.6.8.8.Installer.exe`](https://notepad-plus-plus.org/)
- [x] **Java** [`installers/jdk-8u73-windows-x64.exe`](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) OR [`installers/jdk-8u73-windows-i586.exe`](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
- [x] **Git** [`installers/Git-2.7.1.2-64-bit.exe`](https://git-scm.com/downloads) OR [`installers/Git-2.7.1.2-32-bit.exe`](https://git-scm.com/downloads)
- [x] **Maven** [`installers/apache-maven-3.3.3-bin.zip`](https://maven.apache.org/download.cgi)
- [x] **Tomcat** [`installers/apache-tomcat-8.0.20-bin.zip`](https://tomcat.apache.org/index.html)
- [ ] IntelliJ IDEA [`installers/ideaIU-15.0.3.exe`](https://www.jetbrains.com/idea/)
- [ ] pgAdmin [`installers/pgAdmin.exe`](http://www.pgadmin.org/download/)

## Running installers

- [ ] Select [`install-all.bat`](install-all.bat) OR  [`install-all-qa.bat`](install-all-qa.bat)
- [ ] Right click -> `Run as administrator`

## Manual setup

**Edit `Path` variables**

**Windows Vista/7/8/10**:

Rigth Click on `My Computer` -> `Properties` -> `Advanced system settings` -> `Advanced` -> 
`Environment Variables` -> `System variables` -> `Path` (select path) -> `Edit` ... 
   
and add next line at the end of it:

`;%JAVA_HOME%\bin;%M2_HOME%\bin;%GIT_HOME%\bin;` 

## Results

At the end of this script you'll probable (if the each app have been installed), have:

Following folder structure:

- [x] `C:\Program Files (x86)\Notepad++\`
- [x] `C:\Program Files\Java\jdk1.8.0_73\`
- [x] `C:\Program Files (x86)\Git\`
- [x] `C:\Progs\apache-maven-3.3.9\`
- [x] `C:\Progs\apache-tomcat-8.0.30\`
