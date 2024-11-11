@echo off

title venum perm  
echo best perm on the market
echo Made venum services
echo https://discord.gg/AmkFC5xkyu

net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Run as admin..
    pause
    exit /b
)

cd /d "%~dp0"

echo AMIDEWIN Spoofing..

for /f "delims=" %%i in ('call randstr.bat 10') do set "output=%%i"
for /f "delims=" %%i in ('call randstr.bat 14') do set "output1=%%i"
for /f "delims=" %%i in ('call randstr.bat 10') do set "output2=%%i"

cd AMI

AMIDEWINx64.EXE /IVN "AMI"
AMIDEWINx64.EXE /SM "System manufacturer"
AMIDEWINx64.EXE /SP "System product name"
AMIDEWINx64.EXE /SV "System version"
AMIDEWINx64.EXE /SS %output%
AMIDEWINx64.EXE /SU AUTO
AMIDEWINx64.EXE /SK "To Be Filled By O.E.M"
AMIDEWINx64.EXE /SF "To Be Filled By O.E.M."
AMIDEWINx64.EXE /BM "ASRock"
AMIDEWINx64.EXE /BP "B560M-C"
AMIDEWINx64.EXE /BV " "
AMIDEWINx64.EXE /BS %output1%
AMIDEWINx64.EXE /BT "Default string"
AMIDEWINx64.EXE /BLC "Default string"
AMIDEWINx64.EXE /CM "Default string"
AMIDEWINx64.EXE /CV "Default string"
AMIDEWINx64.EXE /CS %output2%
AMIDEWINx64.EXE /CA "Default string"
AMIDEWINx64.EXE /CSK "SKU"
AMIDEWINx64.EXE /PSN "To Be Filled By O.E.M."
AMIDEWINx64.EXE /PAT "To Be Filled By O.E.M."
AMIDEWINx64.EXE /PPN "To Be Filled By O.E.M."

echo AMIDEWIN Spoofed!
echo Volumeid Spoofing..

cd ..
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output1=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output2=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output3=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output4=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output5=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output6=%%i"
for /f "delims=" %%i in ('call randstr.bat 4 /v') do set "output7=%%i"
cd VOLUME

Volumeid64.exe C: %output%-%output1% /accepteula
Volumeid64.exe D: %output2%-%output3% /accepteula
Volumeid64.exe E: %output4%-%output5% /accepteula
Volumeid64.exe F: %output6%-%output7% /accepteula

echo Volumeid Spoofed!
echo MAC Spoofing..

cd ..
cd NETWORK
call MAC.bat

echo MAC Spoofed!
echo Doing network shit..

netsh winsock reset catalog
netsh int ip reset
netsh advfirewall reset
netsh int reset all
netsh int ipv4 reset
netsh int ipv6 reset
WMIC PATH WIN32_NETWORKADAPTER WHERE PHYSICALADAPTER=TRUE CALL DISABLE >nul 2>&1
WMIC PATH WIN32_NETWORKADAPTER WHERE PHYSICALADAPTER=TRUE CALL ENABLE >nul 2>&1
net stop winmgmt /y
net start winmgmt
start ARP.bat

echo Spoofed, clean or reset, and you can play in tourneys, etc.
echo There are free cleaners that actually work in the CLEANERS folder.
pause