# bulk-resize-videos

## How to use
- Create folder on desktop
- Add mp4 files
- Opne terminal and type ffmpeg to activate
- Set wd to location of new folder
- Enter code

## How to debug
- NB: the quotes need to be straight, not slanted. Copy as exact
- If it fails, start with a minimal example first: ffmpeg -i alexa.mp4 -vcodec h264 -acodec aac output.mp4 
- Then change around the audio encoding output. Try mp2 and then mp3 and then go to crf 24: see: https://gist.github.com/lukehedger/277d136f68b028e22bed
    - For example: “ ffmpeg -i  alexa.mp4 -vcodec libx265 -crf 28 output.mp4 “ works but doesn’t open on QuickTime: vid encoder should be MPEG-4 & H.264, and audio encoder to AAC & MP3 to be readable in QuickTime. So you need libx264 not 365.
