#!/usr/bin/env bash
while true ; do nc -l -p $PORT -c 'echo -e "HTTP/1.1 200 OK\n\n $(date)"'; done
