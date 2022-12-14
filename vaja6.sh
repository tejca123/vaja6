#!/bin/bash
mkdir Desktop Documents Downloads Music Pictures Public Templates Videos
for i in 1 2 3 4 5
do
    mkdir folder_$i
done
for i in 1 2 3 4 5
do
    sudo adduser user_$i
    sudo adduser user_$i sudo
done
sudo apt-get update
sudo apt-get upgrade
sudo apt-get update
sudo apt-get install ufw
sudo ufw enable
systemctl status ufw
sudo apt-get update
sudo apt-get install git
dpkg -s git
sudo apt-get update
sudo apt-get install net-tools
dpkg -s net-tools
sudo apt-get update
sudo apt-get install nginx
systemctl status nginx
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sh install.sh
make shellcheck
