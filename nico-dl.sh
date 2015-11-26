#!/bin/sh

echo -n "ダウンロードする動画の題名: "
read title
echo -n "ダウンロードする動画のURL: "
read url
#echo "nicovideo-dl -u mr.hack.1984@gmail.com -p nmuxj3p11010107n -o \"$title\" $url"
nicovideo-dl -u mr.hack.1984@gmail.com -p nmuxj3p11010107n -o "$title" $url
play /usr/share/sounds/linuxmint-login.wav
