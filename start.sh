#!/bin/bash
set -e

STREAM_KEY="$YOUTUBE_KEY"

while true
do
    ffmpeg -re \
      -stream_loop -1 -i mainvideonosound.mp4 \
      -stream_loop -1 -i song2.mp3 \
      -c:v libx264 -b:v 800k -maxrate 800k -bufsize 1600k -s 854x480 -preset veryfast \
      -c:a aac -b:a 64k -ar 44100 -pix_fmt yuv420p \
      -g 60 -keyint_min 60 \
      -r 25 -force_key_frames "expr:gte(t,n_forced*2)" \
      -shortest \
      -f flv "rtmp://a.rtmp.youtube.com/live2/$STREAM_KEY"
done
