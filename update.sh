#!/bin/bash

file=version.txt
url=$(curl -Ls -o /dev/null -w %{url_effective} https://github.com/jagrosh/MusicBot/releases/latest)
ver=${url##*/}
download="https://github.com/jagrosh/MusicBot/releases/download/"$ver"/JMusicBot-"$ver".jar"

if ! grep -q ${ver} "$file"; then
  echo "Update available! Downloading latest JAR."
  wget ${download}
  echo ${ver} > $file
else
  echo "JMusicBot is the latest version! Continuing to start script."
fi

sh start.sh
