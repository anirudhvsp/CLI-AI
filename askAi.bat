@echo off
setlocal

:: Check if the API URL is set
if "%AI_CHAT_API_URL%"=="" (
    echo Please set the AI_CHAT_API_URL environment variable.
    exit /b 1
)

:: Check if an argument was passed, if not prompt the user for input
if "%~1"=="" (
    set /p user_input=Enter your message: 
) else (
    set user_input=%*
)

:: Make a POST request to the API using curl
curl -s -X POST "%AI_CHAT_API_URL%" -H "Content-Type: application/json" -d "{\"message\":\"%user_input%\"}" > response.json

:: Display the formatted response using PowerShell
powershell -Command "Get-Content response.json | ConvertFrom-Json | Format-List | Out-String | Write-Host"

:: Clean up
del response.json

endlocal
