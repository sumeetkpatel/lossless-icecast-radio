@echo off
rem List Devuces - This script outputs all the directshow devices that ffmpeg can use.

rem Variables
SET ffmpeg_path="C:\Program Files\FFMpeg"

rem Script

SETLOCAL

rem Output devices
%ffmpeg_path%\ffmpeg.exe -hide_banner -list_devices true -f dshow -i dummy

echo\
set /p DUMMY=Hit ENTER to continue...

ENDLOCAL
