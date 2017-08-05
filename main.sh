
index=`cat index.html`

while true
do
ffin=$RANDOM-$RANDOM-ffin
ffout=$RANDOM-$RANDOM-ffout
mkfifo $ffin
mkfifo $ffout
while true; do cat $ffout; done | netcat -l $PORT > $ffin &
echo "HTTP/1.1 200 OK\r\n\r\n$index" > $ffout
cat $ffin > $ffout
rm $ffin
rm $ffout
done
