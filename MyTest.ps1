python.exe -m pip install --upgrade pip
Start-Sleep -s 3
pip freeze | ForEach-Object{$_.split('==')[0]} | ForEach-Object{pip install --upgrade $_}
Start-Sleep -s 3
#.\Update-AllPowerShellModules.ps1
Start-Sleep -s 3
Import-Module PSWindowsUpdate
Start-Sleep -s 3
Reset-WUComponents -Verbose
Start-Sleep -s 3
Get-WindowsUpdate -AcceptAll -Install -Autoreboot
Start-Sleep -s 3
winget.exe upgrade --all
Start-Sleep -s 3
Optimize-Volume -DriveLetter C,D,T -ReTrim -Verbose
Start-Sleep -s 3
Optimize-Volume -DriveLetter D,H -Defrag -Verbose
Start-Sleep -s 3
#cd "C:\Program Files\Dell\CommandUpdate\"
#.\dcu-cli.exe /configure -silent -autoSuspendBitLocker=enable -userConsent=disable
#.\dcu-cli.exe /scan -outputLog=C:\dell\logs\scan.log
#.\dcu-cli.exe /applyUpdates -reboot=disable -outputLog=C:\dell\logs\applyUpdates.log 
#cd "C:\temp"
Start-Sleep -s 3
# start-MpScan -ScanType FullScan
Start-Sleep -s 10
#some text went here
exit