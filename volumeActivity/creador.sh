#!/bin/bash
for i in {1..5}; do
  echo "Test $i" > /datos/test_$i.txt
  sleep 2
done

