@echo off
setlocal enabledelayedexpansion

:: --- CONFIGURATION ---
set "targetFolder=D:\SuzukiPartsFiles\Desktop\WORK FOLDER"
set "devName=REQUILLO"
set "version=3.0"

:: --- UI SETTINGS ---
title Professional System Launcher - %devName%
color 0B
mode con: cols=90 lines=32

:Header
cls
echo.
echo  ==========================================================================================
echo   _____  _____  ____    ___   ___ ___ 
echo  ^|     ^|^|     ^|^|    \  /   \ ^|   ^|   ^|
echo  ^|__   ^|^|   ^|^|  D  )     ^|^| _   _ ^|
echo  ^|    \ ^|^|  ^| ^|    /^|  O  ^|^|  \_/  ^|
echo  ^|     ^|^|   ^|^|    \^|     ^|^|   ^|   ^|
echo  ^|^|^|^|^|^|\\\/ ^|^|_^|
echo.                                                                          
echo    [ SYSTEM DEVELOPER: %devName% ]
echo  ==========================================================================================
echo.
echo    [ STATUS ]  System Ready
echo    [ TARGET ]  %targetFolder%
echo    [ TIME   ]  %date% %time%
echo.
echo  ------------------------------------------------------------------------------------------

:: --- VALIDATION ---
echo    [ ^> ] Verifying directory path...
if not exist "%targetFolder%" (
    color 0C
    echo.
    echo    [ ERROR ] Path not found. Check configuration.
    echo    [ PATH  ] "%targetFolder%"
    echo.
    pause
    exit /b
)

:: --- EXECUTION ---
echo    [ ^> ] Initializing file deployment...
echo.

cd /d "%targetFolder%"

set /a count=0
for %%f in (*) do (
    if not "%%~nxf"=="%~nx0" (
        echo      - [ EXEC ] Opening: %%f
        start "" "%%f"
        set /a count+=1
        timeout /t 1 >nul
    )
)

:: --- SUMMARY & SOUND EFFECT ---
echo.
echo  ------------------------------------------------------------------------------------------
echo    [ COMPLETED ] Task executed successfully.
echo    [ RESULTS   ] %count% files are now active.
echo  ------------------------------------------------------------------------------------------
echo.

:: Sound Notification
powershell -Command "[console]::beep(1000, 300)"
powershell -Command "[console]::beep(1200, 400)"

echo    System will standby for 5 seconds...
timeout /t 5 >nul
exit