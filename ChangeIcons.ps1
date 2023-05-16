# NOT WORKING
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
$iconFolder = "icons"
$iconFile = "Icon.ico"
$iconPath = Join-Path -Path (Join-Path -Path $scriptPath -ChildPath $iconFolder) -ChildPath $iconFile

$regPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\CLSID\{E31EA727-12ED-4702-820C-4B6445F28E1A}"
$regProperty = "DefaultIcon"

Set-ItemProperty -Path $regPath -Name $regProperty -Value $iconPath

# Clear the icon cache
$iconCachePath = "$env:USERPROFILE\AppData\Local\IconCache.db"
if (Test-Path $iconCachePath) {
    Remove-Item $iconCachePath -Force
}

Write-Host "Windows Explorer icon changed successfully."
