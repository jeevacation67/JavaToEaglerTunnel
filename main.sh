#!/bin/bash
echo starting...
cd bungee

MTOD="${MTOD:-'@atypicalpotato on youtube'}"
NAME="${NAME:-'Potato Server'}"

sed -i 's/${SERVER}/'"$SERVER"'/g' config.yml

cd plugins
cd EaglercraftXBungee

sed -i 's/${MTOD}/'"$MTOD"'/g' listeners.yml

cd /
cd bungee
cd web
sed -i 's/${NAME}/'"$NAME"'/g' wasm.html
sed -i 's/${NAME}/'"$NAME"'/g' game.html

cd /
cd bungee

java -Xmx1024M -Xms1024M -jar bungee.jar
