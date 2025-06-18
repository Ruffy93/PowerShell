# === 1. Remotedesktop aktivieren ===
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

# === 2. PC-Namen ändern ===
Rename-Computer -NewName "PS_Funktioniert" -Force

# === 3. Administrator aktivieren ===
net user Administrator /active:yes

# === 4. Administrator-Passwort setzen ===
$adminPass = ConvertTo-SecureString "Passwort123!" -AsPlainText -Force
Set-LocalUser -Name "Administrator" -Password $adminPass

# === 5. IP-Adresse ändern ===
$ifIndex = (Get-NetAdapter | Where-Object {$_.Status -eq "Up"}).InterfaceIndex
New-NetIPAddress -InterfaceIndex $ifIndex -IPAddress "192.168.178.222" -PrefixLength 24 -DefaultGateway "192.168.100.1"
Set-DnsClientServerAddress -InterfaceIndex $ifIndex -ServerAddresses "8.8.8.8"

# === 6. Hintergrundfarbe auf grün setzen ===
Set-ItemProperty -Path "HKCU:\Control Panel\Colors" -Name "Background" -Value "0 128 0"

# === 7. BGInfo herunterladen und aktivieren ===
$bgUrl = "https://download.sysinternals.com/files/BGInfo.zip"
$bgZip = "$env:TEMP\BGInfo.zip"
$bgPath = "C:\Tools\BGInfo"
Invoke-WebRequest -Uri $bgUrl -OutFile $bgZip
Expand-Archive -Path $bgZip -DestinationPath $bgPath
Start-Process "$bgPath\Bginfo64.exe" -ArgumentList "/timer:0 /silent /nolicprompt"

# === 8. Neustart der VM ===
Restart-Computer -Force