sudo apt-get update
sudo apt-get install ffmpeg

#Renségné votre Cam
v4l2-ctl --list-devices

#Lancer le live Twitch:
sudo ffmpeg -f v4l2 -framerate 25 -video_size 1280x720 -i VOTRE-WEBCAM -c:v libx264 -preset veryfast -maxrate 1984k -bufsize 3968k \
-vf "format=yuv420p" -g 60 -c:a aac -b:a 128k -ar 44100 \
-f flv rtmp://live.twitch.tv/app/VOTRE-CLE-DE-STREAMING-PRINCIPALE
