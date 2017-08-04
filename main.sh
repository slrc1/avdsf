
index=$("cat index.html")

while true
do
echo "HTTP/1.1 200 OK\r\n\r\n$index" | netcat -l $PORT
done
