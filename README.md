# bulk-resize-videos

## How to use
- Download [ffmpeg](https://ffmpeg.org/download.html)
- Create a empty folder on desktop
- Add your video files (in this case they should be .mp4 format but you can adjust accordingly)
- Opne terminal and type ffmpeg
- Set wd to location of new folder using cd/YOUR-PATH-HERE
- Copy paste the provided code into terminal

## How to debug
For some reason I kept running into errors the first few times I ran ffmpeg commands. Here are some debugging solution that have worked for me in the past.
- The quote marks need to be straight, not slanted. Copy as exact
- If it fails, start with a minimal example first: ffmpeg -i input_filename.mp4 -vcodec h264 -acodec aac output_filename.mp4 
- If the output has no audio, try to play around with the audio encoding output. Try mp2 and then mp3 and then go to crf 24. See: https://gist.github.com/lukehedger/277d136f68b028e22bed
    - For example: In my case “ ffmpeg -i  input.mp4 -vcodec libx265 -crf 28 output.mp4 “ worked but it didn't open on QuickTime. The video encoder should be MPEG-4 & H.264, and audio encoder AAC & MP3 to be readable in QuickTime, so you need to use libx264 rather than libx265.
