Import-Module BitsTransfer

$downloadApp = $args[0]
$downloadSource = $args[1]
Write-Host Downloading $downloadSource/$downloadApp

Start-BitsTransfer -DisplayName "$downloadApp" -Source $downloadSource/$downloadApp -Destination $downloadApp
