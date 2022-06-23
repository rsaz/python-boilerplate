# Declaring variabels
$rootDir = (Get-Item .\_\update-dependencies.ps1).Directory.Parent.FullName

# Updating packages in the requirements.txt
Write-Output "1. Updating packages in the requirements.txt"
pip freeze > $rootDir\requirements.txt