@echo OFF
rem Start - This is the main script that runs everything in one shot and one window.

REM Variables
SET current_path=%~dp0

TITLE IceCast Lossless Radio

rem Run IceCast server in background and redirect output inline
start /b cmd /c call "icecast.bat" 2>&1

rem Run FFMpeg in background and redirect output inline
start /b cmd /C call "stream.bat" 2>&1