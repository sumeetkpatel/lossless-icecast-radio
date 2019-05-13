@echo off
rem Variables
SET ffmpeg_path="C:\Program Files\FFMpeg"

SET input_device="CABLE-B Output (VB-Audio Cable B)"
SET codec="flac"
SET wrapping="ogg"

SET name="Any stream name"
SET description="Any stream description"
SET iceurl="icecast://source:password@localhost:8000/stream"
SET samplerate=48000
SET compressionlevel=0
SET channels=2

rem Script

SETLOCAL

rem Piping
SET PATH=%ffmpeg_path%
ffmpeg.exe -hide_banner -f dshow -rtbufsize 100M -i audio=%input_device% -ar %samplerate% -ac %channels% -c:a %codec% -content_type "audio/%wrapping%" -ice_name %name% -ice_description %description% %iceurl%.%wrapping%

ENDLOCAL
