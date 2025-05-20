@echo off
color 0B
title Saqxz - HWID Checker
:Main
echo [*] DISK DRIVES:
wmic diskdrive get Model, SerialNumber
echo.

echo [*] CPU:
wmic cpu get SerialNumber
echo.

echo [*] BIOS:
wmic bios get SerialNumber
echo.

echo [*] MOTHERBOARD:
wmic baseboard get SerialNumber
echo.

echo [*] SMBIOS UUID:
wmic path win32_computersystemproduct get UUID
echo.

echo [*] MAC ADDRESSES:
getmac /v /fo list
echo.

echo -----------------------------------------------
echo Press any key to check again, or close to exit.
pause >nul