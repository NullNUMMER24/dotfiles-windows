# Set VPN connection name and server address
$vpnName = "Jamie"
$vpnServerAddress = "vpn.example.com"

# Set VPN connection credentials (optional)
$vpnUsername = "jamie"
$vpnPassword = ConvertTo-SecureString "mypassword" -AsPlainText -Force
$vpnCredentials = New-Object System.Management.Automation.PSCredential($vpnUsername, $vpnPassword)

# Create VPN connection
Add-VpnConnection -Name $vpnName -ServerAddress $vpnServerAddress -TunnelType "SSTP" -EncryptionLevel "Required" -AuthenticationMethod MSChapv2 -Force

# Connect to VPN
Connect-Vpn -Name $vpnName -Credentials $vpnCredentials
