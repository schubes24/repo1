Import-Module BitsTransfer
$webiste = "www.reddit.com/r/earthporn"
$destination = "$ENV:USERPROFILE\Documents\Earthporn"
IF(!(Test-Path $destination)) {New-Item -Path $destination -ItemType Directory -Force | Out-Null}
((Invoke-WebRequest -Uri $webiste).links | Where { $_.href -match ".jpg" } | Where { $_.class -match "title" }).href | Foreach {Start-BitsTransfer -Source $_ -Destination $destination }