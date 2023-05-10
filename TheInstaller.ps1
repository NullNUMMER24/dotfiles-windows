# Change the Wallpaper
Start-Process powershell.exe -ArgumentList "-File `"$PSScriptRoot\ChangeWallpaper.ps1`""

# Change Windows to Dark Theme
Start-Process powershell.exe -ArgumentList "-File `"$PSScriptRoot\DarkTheme.ps1`""

# Set the Systemcolor t dark blue
Start-Process powershell.exe -ArgumentList "-File `"$PSScriptRoot\SetSystemColorDarkBlue.ps1`""

# Install Apps 
Start-Process powershell.exe -ArgumentList "-File `"$PSScriptRoot\InstallAppsOnWindows.ps1`""

# Install Games
Start-Process powershell.exe -ArgumentList "-File `"$PSScriptRoot\InstallGame.ps1`""

# NoFast Mouse
Start-Process powershell.exe -ArgumentList "-File `"$PSScriptRoot\NoFastMouse.ps1`""

# NoNews
Start-Process powershell.exe -ArgumentList "-File `"$PSScriptRoot\NoNewsToday.ps1`""