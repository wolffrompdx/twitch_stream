#!/bin/sh

# twitch_stream.sh
# Use ffmpeg to stream video from a Logitech Webcam to Twitch
# Last modified: 02/28/2020

# Prerequisites:
# Install ffmpeg - sudo apt install ffmpeg
# More information on ffmpeg - https://www.ffmpeg.org/

# Use the pi user to run the script
# Put this script in /home/pi/bin/sh - The service is looking for it there
# Make the script exectuable with chmod +x twitch_stream.sh

# Uses your Twitch account stream key
# Remove {stream_key}, put your actual key there
# See https://stream.twitch.tv/ingests/ for more information and the server near you

# Sets the input source, video settings, output settings, send to Twitch ingest server
# Higher resolution (i.e., for a Logitech 920 Webcam)
ffmpeg -f video4linux2 -s 1280x1024 -i /dev/video0 -c:v h264_omx -threads 0 -f flv "rtmp://live-yto.twitch.tv/app/{streamkey}"

# End of file
