@echo off
:: Your commands go here
echo Checking if the directory exists...
if exist "C:/keep-awake-app" (
    cd C:\keep-awake-app
    npm start
) else (
    cd C:\
    git clone https://github.com/Jeka442/keep-awake-app.git
    cd C:\keep-awake-app
    npm i
    npm start
)

:: Keep the console open
pause