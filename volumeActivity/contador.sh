#!/bin/bash
while true; do
  clear
  echo "Archivos en /datos:"
  ls /datos
  echo
  echo "Cantidad de archivos: $(ls /datos | wc -l)"
  sleep 2
done

