
# lossless-icecast-radio
Helpful scripts to stream from an audio device (real or virtual) to an Icecast server in FLAC/lossless, all using open source software.

## Requirements
1. Windows (but scripts can be ported to any platform)
2. A working Icecast server, local or remote. A free server software for streaming multimedia. See http://icecast.org/download/.
3. FFMpeg, a complete, cross-platform solution to record, convert and stream audio and video. See https://www.ffmpeg.org/.

## Setup
Install FFMpeg and Icecast then update the appropriate path in each batch file,  [listdevices.bat](windows\listdevices.bat) and [stream.bat](windows/stream.bat). 

## Configure
Edit ```stream.bat``` and update the appropriate streaming variables as needed.
* `input_device` - The directshow device name of the input audio device. To determine the names for the devices you can use the [listdevices.bat](windows\listdevices.bat)   script.
* `codec` - The codec of the inner audio data, (default: flac).
* `wrapping` - The codec of the wrapping/transport, since some formats do not have sufficient transport protocols (default, ogg).
* `name` - The Icecast stream name
* `description` - The Icecast stream description
* `iceurl` - The full icecast url for the desired stream less the file extension which will be automatically set to the wrapping codec. See Icecast URL format section.
* `samplerate` - The sample rate for the input stream in bits.
* `compressionlevel` - The compression level to use between 0 and 10. (default: 0, not used).
* `channels` - How many channels will be streamed.

### Icecast URL format
Standard Icecast style URL without a file extension.
```icecast://source:<password>@<host>:<port>/<mount>```
> Remember to set password, host, port and mount without brackets.
> 
> Username is default as source
>
> Mount point file extension is automatically set to the transport format (default: ogg)

example:
```icecast://source:hackme@localhost:8000/stream```

## Run the Stream

### Start the script to connect your device to Icecast
Run [stream.bat](windows/stream.bat) in Windows and leave it running.

### Start streaming audio into the device
Run something like VLC or Foobar to play any file with the output device set to the same as your input device as configured. This will stream audio data in.

### Listen
Listen from the Icecast web admin, via m3u or alternate file, or by entering the Icecast URL manually into a player such as VLC. In our example it would be ```icecast://source:hackme@localhost:8000/stream.ogg```.

 Remember to use an external host name if necessary, and setup port-forward/firewall-exceptions where needed.

*Voila! May your streams be lossless and bit-rates be high.*
