Set-ExecutionPolicy Bypass -Force

Install-PackageProvider -Name "nuget" -Force

if (Get-PackageProvider -ListAvailable -Name NuGet) {
    Write-Host "NuGet Installed"
}
else {
        Install-PackageProvider -Name "nuget" -Force  
}

if (Get-Module -ListAvailable -Name PSWindowsUpdate) {
    Write-Host "PSWindowsUpdate Installed"
}
else {
    
        Install-Module PSWindowsUpdate -Force
}
Install-WindowsUpdate -MicrosoftUpdate -AcceptAll | Out-File "C:\WindowsUpdates.log" -Force |
Shutdown.exe /R /T 120
