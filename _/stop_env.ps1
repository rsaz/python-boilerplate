# Declaring variabels
$rootDir = (Get-Item .\_\start_env.ps1).Directory.Parent.FullName

# Stop Environment
Write-Output "1. Stop Environment (venv)"
Set-Location $rootDir
deactivate