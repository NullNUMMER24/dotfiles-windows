$wallpaper = "$PSScriptRoot\background.jpg"
Remove-ItemProperty -path "HKCU:\Control Panel\Desktop" -name WallPaper -Force
Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name Wallpaper -value $wallpaper -Force
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True

Add-Type -TypeDefinition @'
using System.Runtime.InteropServices;
public class Wallpaper {
    public const uint SPI_SETDESKWALLPAPER = 0x0014;
    public const uint SPIF_UPDATEINIFILE = 0x01;
    public const uint SPIF_SENDWININICHANGE = 0x02;
    [DllImport("user32.dll", SetLastError = true, CharSet = CharSet.Auto)]
    private static extern int SystemParametersInfo (uint uAction, uint uParam, string lpvParam, uint fuWinIni);
    public static void SetWallpaper (string path) {
        SystemParametersInfo(SPI_SETDESKWALLPAPER, 0, path, SPIF_UPDATEINIFILE | SPIF_SENDWININICHANGE);
    }
}
'@

[Wallpaper]::SetWallpaper($wallpaper)
