#!/usr/bin/env bash
while true; do echo -e "HTTP/1.1 200 OK\r\nContent-Type: text/html\r\n\r\nI think the date is $(date), Have a good day!" | nc -l -p $PORT; done
