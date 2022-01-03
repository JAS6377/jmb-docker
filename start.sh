#!/bin/bash

ver=$(cat version.txt)
jar="JMusicBot-"$ver".jar"
FILE="config.txt"

if test -e $FILE; then
  echo "Config exists!"
else
  echo "No config file found! Writing new 'config.txt'."
  echo "Writing bot token."
  echo "token = "${TOKEN} > config.txt
  echo "Writing owner ID."
  echo "owner = "${OWNER} >> config.txt
fi

echo "Starting JMusicBot. If you run into errors, check your Bot Token and Owner ID in 'config.txt' in the container's root directory. See https://jmusicbot.com/config/ for examples and additional options."


java -jar $jar
