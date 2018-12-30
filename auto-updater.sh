#!/bin/bash



value=$(<latest_version.txt)
echo "Starting Process"
rm -rf LMPServer
wget "https://github.com/LunaMultiplayer/LunaMultiplayer/releases/download/""$value""/LunaMultiplayer-Release.zip"
unzip ~/LunaMultiplayer-Release.zip
rm -rf ~/LMPClient
rm -f ~/"LMP Readme.txt"
rm -f ~/LunaMultiplayer-Release.zip
echo "Completed ok"
mono ~/LMPServer/Server.exe

