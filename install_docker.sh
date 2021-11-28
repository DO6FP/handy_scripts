#!/bin/bash

# based on opensourceisawesome.com example
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

## for ubuntu 20.04
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce -y

sudo usermod -aG docker ${USER}

sudo apt install docker-compose -y
