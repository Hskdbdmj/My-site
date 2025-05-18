#!/data/data/com.termux/files/usr/bin/bash
cd ~/mysite
nohup python -m http.server 8888 > ~/server.log 2>&1 &

