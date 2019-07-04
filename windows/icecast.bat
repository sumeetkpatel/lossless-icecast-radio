@echo off
rem IceCast - This script runs the IceCast server only with minimal chatter

echo IceCast Running...
pushd "C:\Program Files (x86)\Icecast"
call bin\icecast.exe -c icecast.xml

PAUSE