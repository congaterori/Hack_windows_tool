@echo off
title battle computer
echo 1.color a
echo 2.color 9e
set /p color=choose color: 
if %color% == 1 color a
if %color% == 2 color 9e
cls
goto computer
:computer
echo tool have another tool
echo choose your computer
pause
cls
goto start
:start
cls
echo 1.ping
echo 2.nslookup
echo 3.tracert
echo 4.route
echo 5.ipconfig
echo 6.netstat
echo 7.download
set /p chosse=choose: 
if %chosse% == 1 goto ping
if %chosse% == 2 goto nslookup
if %chosse% == 3 goto tracert
if %chosse% == 4 goto route
if %chosse% == 5 goto ipconfig
if %chosse% == 6 goto netstat
if %chosse% == 7 goto download
goto start
:ping
cls
set /p enter=ping website: 
ping %enter%
pause
goto start
:nslookup
:NSLOOKUP
SET TYPE=MX
::GOOGLE.COM/YAHOO.COM
::find IP address of specific Mail Servers
set /p lookup=website to lookup: 
nslookup %lookup%
pause
goto start
:tracert
cls
set /p tracketlocal=tracert website: 
tracert %tracketlocal%
pause
goto start
:arp
cls
echo no type can edit on notepad
ARP -A
pause
goto start
:route
cls
echo no type can edit on notepad
ROUTE PRINT
pause
goto start
:ipconfig
cls
echo no type can edit on notepad
IPCONFIG
pause
goto start
::IPCONFIG/RELEASE (THIS WILL RELEASE YOUR IP ADDRESS)
::IPCONFIG/RENEW (THIS WILL RENEW YOUR IP ADDRESS)
:neststat
cls
echo no type can edit on notepad
NETSTAT-an
pause
goto start
:download
cls
echo 1.Ddos
echo 2.Nmap
echo 3.aircrack-ng
echo 4.download
set /p downloadchoose=choose: 
if %downloadchoose% == 1 goto ddos
if %downloadchoose% == 2 goto nmap
if %downloadchoose% == 3 goto aircrack-ng
if %downloadchoose% == 4 goto more
goto download
:ddos
cls
echo ddos level
echo 1.level1
echo 2.level2
echo 3.level3
echo 4.back
set /p ddoschoose=choose: 
if %ddoschoose% == 1 goto ddoslevel1
if %ddoschoose% == 2 goto ddoslevel2
if %ddoschoose% == 3 goto ddoslevel3
if %ddoschoose% == 4 goto start
goto ddos
:ddoslevel1
cls
set /p websiteddos=website for ddos: 
set /p packets=number packets: 
start ping %websiteddos% -l %packets% -w 1 -n 1
start ping %websiteddos% -t -l %packets%
@ping.exe %websiteddos% -n 5 -w %packets%
start start ping %websiteddos% -n %packets%
pause
goto ddos
:ddoslevel2
cls
set /p websiteddos=website for ddos: 
set /p packets=number packets: 
ping %websiteddos% -l %packets% -w 1 -n 1
ping %websiteddos% -t -l %packets%
start ping %websiteddos% -l %packets% -w 1 -n 1
start ping %websiteddos% -t -l %packets%
@ping.exe %websiteddos% -n 5 -w %packets%
start start ping %websiteddos% -n %packets%
start https://freeipstress.com/
start https://freestresser.me/
pause
goto start
:ddoslevel3
cls
echo download file
start https://drive.google.com/open?id=1JtLxvkIwrSPB0zYUnaSN2fdDOY1zPjgq
pause
goto start
:nmap
cls
echo install nmap
powershell -Command "Invoke-WebRequest https://nmap.org/dist/nmap-7.80-setup.exe -OutFile nmap-7.80-setup.exe"
start nmap-7.80-setup.exe
echo type nmap to use
start "type nmap to use"
pause
goto start
:aircrack-ng
echo download aircrack..
powershell -Command "Invoke-WebRequest https://download.aircrack-ng.org/aircrack-ng-1.6-win.zip -OutFile aircrack-ng-1.6-win.zip"
unzip.exe aircrack-ng-1.6-win.zip
set /p wind=windows 32-bit or 64-bit: 
cls
if %wind% == "32-bit" goto 32-bit
if %wind% == "64-bit" goto 64-bit
goto aircrack-ng
:32-bit
echo click button ok
pause
move aircrack-ng-1.6-win C:\Program Files\ > nul
start C:\Users\%USERNAME%\Desktop\Hack_windows_tool\set\set.reg
start "type aireplay-ng to start aircrack-ng"
pause
goto start
:64-bit
echo click button ok
pause
move aircrack-ng-1.6-win C:\Program Files (x86)\ > nul
start C:\Users\%USERNAME%\Desktop\Hack_windows_tool\set\setx64.reg
start "type aireplay-ng to start aircrack-ng"
pause
goto start
:more
cls
echo do you want download netcut
set /p netcut=(y/n): 
if %netcut% == "y" goto netcut
if %netcut% == "Y" goto netcut
cls
echo you want to download more tool
echo 1.use powershell
echo 2.use start(recommend)
echo 3.back
set /p use=choose: 
if %use% == 1 goto powershell
if %use% == 2 goto downloadstart
if %use% == 3 goto start
goto more
:netcut
cls
echo loading...
start https://www.arcai.com/download/netcut.exe
start C:\Users\%USERNAME%\Downloads\netcut.exe
pause
goto start
:powershell
cls
echo                          .----------------------,  ,----------------------.
echo                          ^|       link main      ^|  ^|       link file      ^|
echo must have link https://>>download.aircrack-ng.org<</aircrack-ng-1.6-win.zip<<
set /p powershellname=link file(Ex:https://download.aircrack-ng.org/aircrack-ng-1.6-win.zip): 
set /p powershellfile=filename(Ex:aircrack-ng-1.6-win.zip): 
powershell -Command "Invoke-WebRequest %powershellname% -OutFile %powershellname%"
pause
goto more
:downloadstart
cls
echo                          .----------------------,  ,----------------------.
echo                          ^|       link main      ^|  ^|       link file      ^|
echo must have link https://>>download.aircrack-ng.org<</aircrack-ng-1.6-win.zip<<
set /p startname=link file(Ex:https://download.aircrack-ng.org/aircrack-ng-1.6-win.zip): 
start %startname%
pause
goto more