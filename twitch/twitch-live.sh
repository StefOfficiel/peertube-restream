ffmpeg -i "hls+$(yt-dlp --no-part -g )" -filter:v scale=1280:720:force_original_aspect_ratio=decrease,pad=1280:720:-1:-1:color=black -c:v libx264 -preset superfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -r 24 -g 48 -t 3600 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmp://:1935/live/