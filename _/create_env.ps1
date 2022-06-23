# Declaring variabels
$rootDir = (Get-Item .\_\create_env.ps1).Directory.Parent.FullName

# Creating Environment
Write-Output "1. Creating Environment (venv)"
python -m venv $rootDir\venv

# Activating Environment
Write-Output "2. Activating Environment"
Set-Location $rootDir
.\venv\Scripts\activate

# Install packages from requirements.txt
Write-Output "3. Installing packages in the virtual environment"
pip install -r $rootDir\requirements.txt