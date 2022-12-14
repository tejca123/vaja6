#!/bin/bash

sudo mkdir Downloads
sudo mkdir Desktop
sudo mkdir Documents
sudo mkdir Pictures
sudo mkdir Videos

for i in {1..5}
do
mkdir folder$i
done

readarray -t a <users.txt

for i in "${a[@]}"
do
sudo adduser "$i"
sudo usermod -aG sudo "$i"
done

sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
    sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo apt-get update -y
sudo apt-get install -y net-tools
