# Specify your Interface Alias
$ifalias = "Ethernet"

# Isolated Network IP and Prefix Length
$ip = "10.2.2.15"
$prefix = 24

# Remove default route
Get-NetRoute | Where-Object {$_.DestinationPrefix -eq "0.0.0.0/0"} | Remove-NetRoute -Confirm:$false

# Remove NAT Network IP 
Get-NetIPAddress | Where-Object {$_.InterfaceAlias -eq $ifalias -and $_.AddressFamily -eq "IPv4"} | Remove-NetIPAddress -Confirm:$false

# Set up Isolated Network IP
New-NetIPAddress -InterfaceAlias $ifalias -IPAddress $ip -AddressFamily IPv4 -PrefixLength $prefix