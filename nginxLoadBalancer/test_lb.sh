#!/bin/bash

URL="http://localhost"

echo "Testing Traefik load balancing (no keep-alive)"
echo "---------------------------------------------"

for i in {1..10}
do
  echo -n "Request $i → "
  curl -s -H "Connection: close" $URL
  sleep 0.5
done
