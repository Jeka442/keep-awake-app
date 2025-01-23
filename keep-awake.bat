@echo off
:: Your commands go here
echo Checking if the directory exists...
if exist "C:\path\to\directory" (
    echo Directory exists.
) else (
    echo Directory does not exist.
)

:: Keep the console open
pause