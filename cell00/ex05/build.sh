#!/bin/bash
leave="q"
folder=""
attempts=1
max_attempts=5

until [ "$attempts" -gt "$max_attempts" ]; do
  echo "this file $attempts of $max_attempts attempts"

  while [ "$folder" != "$leave" ]; do
    read -p "Enter folder name or q to leave: " folder

    if [ "$folder" == "$leave" ]; then
      echo "already exit"
      exit 0
    else
      echo "create folder ex$folder"
      mkdir ex$folder
      break
    fi
  done

  ((attempts++))
done

if [ "$attempts" -gt "$max_attempts" ]; then
  echo "To much folder"
fi
