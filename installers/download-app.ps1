Import-Module BitsTransfer

$downloadApp = $args[0]
Write-Host Downloading $downloadApp

Start-BitsTransfer -DisplayName "$downloadApp" -Source http://developer.fasttrackit.ninja:8080/kits/$downloadApp -Destination $downloadApp
