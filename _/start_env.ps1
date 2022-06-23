# Declaring variabels
$rootDir = (Get-Item .\_\start_env.ps1).Directory.Parent.FullName

# Start Environment
Write-Output "1. Start Environment (venv)"
Set-Location $rootDir
./venv/Scripts/activate
