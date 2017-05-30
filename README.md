# Environment Setup

This project is for [FastTrackIT](http://www.fasttrackit.org/) students to configure their PC faster. But feel free to share and use for any other needs.

## Applications that can be Installed

Depending on the needs, some of following applications will be installed when you run **install-{type}.bat**:

- [x] **Notepad++** [`installers/npp.{version}.Installer.exe`](https://notepad-plus-plus.org/)
- [x] **Java** [`installers/jdk-{version}-windows-x64.exe`](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) OR [`installers/jdk-{version}-windows-i586.exe`](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
- [x] **Git** [`installers/Git-{version}-64-bit.exe`](https://git-scm.com/downloads) OR [`installers/Git-{version}-32-bit.exe`](https://git-scm.com/downloads)
- [x] **Maven** [`installers/apache-maven-{version}-bin.zip`](https://maven.apache.org/download.cgi)
- [x] **Tomcat** [`installers/apache-tomcat-{version}-bin.zip`](https://tomcat.apache.org/index.html)
- [x] **XAMPP** [`installers/xampp-{version}-installer.exe`](https://www.apachefriends.org/download.html)

If any of the applications are configured correctly on your PC, they will not be re-installed.

## First step setup

There are 2 ways to get started, based on that, continue with following instructions:

### 1) Your trainer give you a USB Stick with all installers

Continue with [Running installers](#running-installers).

### 2) Download ZIP

- [x] [Download ZIP](https://github.com/nmatei/workstation-config/archive/master.zip).
- [x] Extract it (unzipp)

Continue with [Running installers](#running-installers).

## Running installers

- [ ] **Right click** on needed installer:
    - [ ] [`install-automation.bat`](install-automation.bat) 
    - [ ] [`install-dev.bat`](install-dev.bat)
    - [ ] [`install-qa.bat`](install-qa.bat)
- [ ] And **Run as administrator**

![Run as administrator](https://cloud.githubusercontent.com/assets/2863309/13601668/74a9388e-e53a-11e5-859d-203043ca10e5.jpg)

## Manual setup

**Edit `Path` variables**

Windows Vista/7/8/10:

`Right Click` on `My Computer` -> `Properties` -> `Advanced system settings` -> `Advanced` -> 
`Environment Variables` -> `System variables` -> `Path` (select path) -> `Edit` ... 

and add next line at the end of it:

**Automation Testers & Developers**:

- [ ] `;%JAVA_HOME%\bin;%M2_HOME%\bin;%GIT_HOME%\bin;%GIT_HOME%\usr\bin;`

**Manual Testers**:

- [ ] `;%JAVA_HOME%\bin;%M2_HOME%\bin;`


<br />
<br />

## Results

At the end of this script you'll probable (if the each app have been installed), have:

Following folder structure:

- [x] `C:\Program Files (x86)\Notepad++\`
- [x] `C:\Program Files\Java\jdk1.8.0_73\`
- [x] `C:\Program Files (x86)\Git\`
- [x] `C:\Progs\apache-maven-3.3.9\`
- [x] `C:\Progs\apache-tomcat-8.5.11\`
- [x] `C:\xampp\`

And System variables added:

- [x] `JAVA_HOME = C:\Program Files\Java\jdk1.8.0_73`
- [x] `M2_HOME = C:\Progs\apache-maven-3.3.9`
- [x] `GIT_HOME = C:\Program Files\Git`

[Results Screens](https://github.com/nmatei/workstation-config/issues/1)

<br />
<br />

## Trainer notes

Before copy entire project to USB Stick, make sure you have all applications in [`installers/`](installers/) by **Running as Admin** [`installers/download-all.bat`](installers/download-all.bat)

### TODO's

- [ ] Install xampp in silent mode "xampp.exe --help"
- [ ] Install [IntelliJ IDEA](https://www.jetbrains.com/)
- [ ] Install pgAdmin
- [ ] Automatically change `Path`
