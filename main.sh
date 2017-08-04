while true
do
netcat -l $PORT
echo "HTTP/1.1 200 OK\r\n\r\n"
done
