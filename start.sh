#!/bin/bash
set -e

STREAM_KEY="$YOUTUBE_KEY"

while true
do
    ffmpeg -re \
      -stream_loop -1 -i mainvideonosound.mp4 \
      -stream_loop -1 -i song2.mp3 \
      -c:v libx264 -b:v 1000k -maxrate 1000k -bufsize 2000k -s 854x480 -preset veryfast \
      -c:a aac -b:a 96k -ar 44100 -pix_fmt yuv420p \
      -g 30 -keyint_min 30 \
      -r 30 -force_key_frames "expr:gte(t,n_forced*2)" \
      -shortest \
      -f flv "rtmp://a.rtmp.youtube.com/live2/$STREAM_KEY"
done
