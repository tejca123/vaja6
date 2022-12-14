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

for i in "${1..5}"
do
sudo adduser "$i"
sudo usermod -aG sudo "$i"
done


sudo apt-get update -y
sudo apt-get install -y net-tools

curl -fsSL https://get.docker.com/ -o get-docker.sh
sh get-docker.sh
sh install.sh
make shellcheck
