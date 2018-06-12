@echo off
REM --------------------------------------------------
REM ---    PLACE THIS IN THE SAME DIRECTORY OF     ---
REM ---              THE PROGRAM!                  ---
REM --------------------------------------------------

REM This Script will run for 80 seconds. (20 seconds 
REM to start the Miner, and 60 seconds mining.) Then
REM kills the Miner. Pauses for 10 seconds, then 
REM restarts the Loop all over again.

REM Code by: -REDD-

REM Name of the Program or Miner you are trying to Loop.
set "EXE=xmrig.exe"
REM Name of the Startup Program/Bat file the Program uses.
set "STARTUP=start.cmd"


:START
echo @echo off >timer.bat
echo timeout /t 80 /NOBREAK >>timer.bat
echo taskkill /f /t /IM "%%EXE%%" >>timer.bat
echo :EOF>>timer.bat
echo exit>>timer.bat
:MINE
start /min timer.bat >NUL
call %STARTUP%
echo.
echo.
echo.
echo Pausing for 10 Seconds to let Miner Cooldown...
timeout /t 10 /NOBREAK >NUL
echo Restarting script
GOTO START
:END