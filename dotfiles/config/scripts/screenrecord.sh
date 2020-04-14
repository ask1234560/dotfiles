# fname="~/Videos/Screencast-$(date +%F-%R:%S).mkv"
fname="temp.mkv"

ffmpeg -y -f x11grab -s 1366x768 -i :0.0 -i ~/Music/Bed_and_Breakfast\ audio.mp3  -c:v libx264 -r 30 -c:a flac  $fname

echo "Remove?" 
read op

[ $op = "y" ] && rmtrash $fname
