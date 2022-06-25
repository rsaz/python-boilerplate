# Variable declarations
$gitignore = "https://raw.githubusercontent.com/github/gitignore/main/Python.gitignore"
$envscript = ".\_\Create-Env.ps1"

# Create a python project boilerplate
Write-Output "Generating Python Project . . ."

# Create Folder Structure
New-Item project-template -ItemType Directory
cd project-template
New-Item docs, examples,source, tests -ItemType Directory
New-Item requirements.txt

# Setting up Main
cd source
New-Item main.py, __init__.py
New-Item package_name -ItemType Directory
cd package_name
New-Item my_package.py, __init__.py
cd ..

# Downloading gitgnore
Write-Output "Downloading .gitgnore"
cd ..
Invoke-WebRequest -Uri $gitignore -OutFile .\.gitignore

# Create a python environment
Write-Output "Creating Python Enviornment . . ."
py -m venv venv

# Activating python environment
Write-Output "Activating Python Enviornment . . ."
cd .\venv\Scripts\
.\activate

# Installing basic dependencies
Write-Output "Installing basic dependencies"
cd ..\..\
py -m pip install autopep8

# Updating dependencies
Write-Output "Updating project dependencies . . ."
py -m pip freeze > requirements.txt

# Finalizing the project creation
Write-Output "Project created successfully"