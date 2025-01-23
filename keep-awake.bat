@echo off
:: Your commands go here
echo Checking if the directory exists...
if exist "C:/keep-awake-app" (
    echo directory exists, starting application
    cd C:\keep-awake-app
    npm start
) else (
    echo directory dosn't exists, cloning from repo
    cd C:\
    git clone https://github.com/Jeka442/keep-awake-app.git
    echo starting application
    cd C:\keep-awake-app
    npm i
    npm start
)

:: Keep the console open
pause