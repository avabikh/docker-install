#!/bin/sh
apt remove docker docker-engine

apt install apt-transport-https \ ca-certificates \ curl \ software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository \ "deb [arch=amd64] https://download.docker.com/linux/ubuntu/dists \ bionic \  stable"

apt update

echo "-------installation: policy docker-ce-------"
# apt-cache policy docker-ce
echo "-------installation: docker-ce-------"
apt install docker-ce

systemctl status docker

usermod -aG docker ${USER}

su - ${USER}

id -nG


