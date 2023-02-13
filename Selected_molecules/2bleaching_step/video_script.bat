
@REM https://gist.github.com/lukehedger/277d136f68b028e22bed
@REM compresses the file without reduction quality
ffmpeg -i "loop (4)_jet_kymovideo_fade.mp4" -vcodec h264 -acodec mp2 "loop (4)_jet_kymovideo_fade_mp2.mp4"

@REM incompatibel encoding but reduces the size a lot
@REM ffmpeg -i "Movie S5_Fig3A.mp4" -vcodec libx265 -crf 28 "Movie S5_Fig3A_half.mp4"

@REM https://unix.stackexchange.com/questions/28803/how-can-i-reduce-a-videos-size-with-ffmpeg
@REM scale half, but sometime can blurr/reduce quality
ffmpeg -i "Movie S6_Fig3F.mp4" -vf "scale=trunc(iw/4)*2:trunc(ih/4)*2" -c:v libx264 -crf 28 "Movie S6_Fig3F_half.mp4"

@REM scale quarter
@REM ffmpeg -i "Movie S5_Fig3A.mp4" -vf "scale=trunc(iw/8)*2:trunc(ih/8)*2" -c:v libx264 -crf 28 "Movie S5_Fig3A_quarter.mp4"


