Import-Module BitsTransfer

<# Manual install next apps #>

Start-BitsTransfer -DisplayName "ideaIU" -Source https://download.jetbrains.com/idea/ideaIU-15.0.4.exe -Destination ideaIU-15.0.4.exe

Start-BitsTransfer -DisplayName "postgresql" -Source http://get.enterprisedb.com/postgresql/postgresql-9.5.0-1-windows-x64.exe -Destination postgresql-9.5.0-1-windows-x64.exe
