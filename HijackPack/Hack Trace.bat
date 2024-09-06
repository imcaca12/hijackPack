@echo off
title Hack Trace
:menu
cls
echo ===============================
echo          Main Menu
echo ===============================
echo 1. See Location by IP
echo 2. See Coordinates by IP
echo 3. Connect to IP
echo 4. Exit
echo ===============================
set /p choice=Select an option [1-4]: 

if "%choice%"=="1" goto location
if "%choice%"=="2" goto coordinates
if "%choice%"=="3" goto connect
if "%choice%"=="4" goto exit
goto menu

:location
set /p ip=Enter IP address: 
echo Getting location for %ip%...
curl "http://ip-api.com/json/%ip%" | findstr /C:"country" /C:"regionName" /C:"city"
pause
goto menu

:coordinates
set /p ip=Enter IP address: 
echo Getting coordinates for %ip%...
curl "http://ip-api.com/json/%ip%" | findstr /C:"lat" /C:"lon"
pause
goto menu

:connect
set /p ip=Enter IP address to connect to: 
echo Connecting to %ip%...
ping %ip%
pause
goto menu

:exit
exit
