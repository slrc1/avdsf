#!/usr/bin/env bash
RESPONSE="HTTP/1.1 200 OK\r\nConnection: keep-alive\r\n\r\nOK\r\n"
while { echo -en "$RESPONSE"; } | nc -l $1; do
  echo "================================================"
done
