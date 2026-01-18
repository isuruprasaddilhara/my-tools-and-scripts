#!/bin/bash

read -p "Enter URL: " url
echo
while true; do
  read -p "Enter command (q to exit) >" command

  if [ "$command" = "q" ]; then
    break
  fi

  output=$(curl -sG --data-urlencode "cmd=$command" "$url" | strings) 
  echo "$output"
  echo
done
