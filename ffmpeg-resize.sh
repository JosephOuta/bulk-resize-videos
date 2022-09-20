for i in *.mp4; do ffmpeg -i  "$i" -vcodec libx264 -crf 24 "compressed/${i%.*}.mp4"; done
