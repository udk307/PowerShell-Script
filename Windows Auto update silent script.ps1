Set-ExecutionPolicy Bypass -Force
Install-PackageProvider -Name "nuget" -RequiredVersion "2.8.5.201" -Force
Install-Module PSWindowsUpdate -Force
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll -AutoReboot | Out-File "C:\WindowsUpdates.log" -Force
